----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2024 12:11:23 PM
-- Design Name: 
-- Module Name: tangerineSOCMA7Top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;   


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity tangerineSOCMA7Top is
port(
    
    clk_in_100:     in  std_logic;
    reset_in:       in  std_logic;

    --hdmi
    data_p:         out std_logic_vector(2 downto 0);
    data_n:         out std_logic_vector(2 downto 0);
    clk_p:          out std_logic;
    clk_n:          out std_logic;
           
    --uart
    uart_tx:        out std_logic;
    uart_rx:        in  std_logic;
    
    
    --ddr3
    ddr3_dq:        inout std_logic_vector( 15 downto 0 );
    ddr3_addr:      out std_logic_vector( 13 downto 0 );
    ddr3_ba:        out std_logic_vector( 2 downto 0 );
    ddr3_ras_n:     out std_logic;
    ddr3_cas_n:     out std_logic;
    ddr3_we_n:      out std_logic;
    ddr3_reset_n:   out std_logic;
    ddr3_cke:       out std_logic_vector( 0 downto 0 );
    ddr3_odt:       out std_logic_vector( 0 downto 0 );
    ddr3_cs_n:      out std_logic_vector( 0 downto 0 );
    ddr3_dm:        out std_logic_vector( 1 downto 0 );
    ddr3_dqs_p:     inout std_logic_vector( 1 downto 0 );
    ddr3_dqs_n:     inout std_logic_vector( 1 downto 0 );
    ddr3_ck_p:      out std_logic_vector( 0 downto 0 );
    ddr3_ck_n:      out std_logic_vector( 0 downto 0 );

    --leds    
    leds:           out std_logic_vector( 7 downto 0 )

);
end tangerineSOCMA7Top;

architecture behavioral of tangerineSOCMA7Top is

--components

--HDMI / gfx PLL

component clockingHDMI
port
 (
  -- Clock out ports
  clk_out1_125:     out    std_logic;
  clk_out2_125ps:   out    std_logic;
  clk_out3_25:      out    std_logic;
    
  -- Status and control signals
  reset:            in     std_logic;
  locked:           out    std_logic;
  
  -- Clock in ports
  clk_in1:          in     std_logic
 );
end component; 

--System / CPU PLL

component clockingSystem
port
(  
    -- Clock out ports
    clk_out1_50:    out    std_logic;
    clk_out2_100:   out    std_logic;
    clk_out3_200:   out    std_logic;
  
    -- Status and control signals
    reset:          in     std_logic;
    locked:         out    std_logic;

    -- Clock in ports
  clk_in1:          in     std_logic
 );
end component; 

--dvi encoder
component dvid
port(
    clk:        in  std_logic;
    clk_n:      in  std_logic;
    clk_pixel:  in  std_logic;
    red_p:      in  std_logic_vector(7 downto 0);
    green_p:    in  std_logic_vector(7 downto 0);
    blue_p:     in  std_logic_vector(7 downto 0);
    blank:      in  std_logic;
    hsync:      in  std_logic;
    vsync:      in  std_logic;          
    red_s:      out std_logic;
    green_s:    out std_logic;
    blue_s:     out std_logic;
    clock_s:    out std_logic
);
end component;

-- font rom
component fontPROM
port(
    clka:   in  std_logic;
    addra:  in  std_logic_vector( 10 downto 0 );
    douta:  out std_logic_vector( 7 downto 0 ) 
);
end component; 

-- system ram ( bootloader, stack, text mode fb )
component systemRam
port (
    clka:   in  std_logic;
    wea:    in  std_logic_vector(3 DOWNTO 0);
    addra:  in  std_logic_vector(12 DOWNTO 0);
    dina:   in  std_logic_vector(31 DOWNTO 0);
    douta:  out std_logic_vector(31 DOWNTO 0);
    
    clkb:   in  std_logic;
    web:    in  std_logic_vector(3 DOWNTO 0);
    addrb:  in  std_logic_vector(12 DOWNTO 0);
    dinb:   in  std_logic_vector(31 DOWNTO 0);
    doutb:  out std_logic_vector(31 DOWNTO 0) 
);
end component; 

-- text mode pixel and sync gen
component pixelGenTxt
    port(
        --reset
        reset:          in  std_logic;
        pgClock:        in  std_logic;
        pgVSync:        out std_logic;
        pgHSync:        out std_logic;
        pgDe:           out std_logic;
        pgR:            out std_logic_vector( 7 downto 0 );
        pgG:            out std_logic_vector( 7 downto 0 );
        pgB:            out std_logic_vector( 7 downto 0 );

        fontRomA:       out std_logic_vector( 10 downto 0 );
        fontRomDout:    in  std_logic_vector( 7 downto 0 );

        videoRamBA:     out std_logic_vector( 13 downto 0 );
        videoRamBDout:  in  std_logic_vector( 15 downto 0 );
        
        pgXCount:       out std_logic_vector( 11 downto 0 );
        pgYCount:       out std_logic_vector( 11 downto 0 );
        pgDeX:          out std_logic;
        pgDeY:          out std_logic;
        pgPreFetchLine: out std_logic;
        pgFetchEnable:  out std_logic;
    
        pgVideoMode:      in  std_logic_vector( 1 downto 0 )
    );
end component;

-- riscv cpu
component picorv32 is   
   port
   (
      clk:           in  std_logic;
      resetn:        in  std_logic;
      trap:          out std_logic;
      mem_valid:     out std_logic;
      mem_instr:     out std_logic;
      mem_ready:     in  std_logic;

      mem_addr:      out std_logic_vector( 31 downto 0 );
      mem_wdata:     out std_logic_vector( 31 downto 0 );
      mem_wstrb:     out std_logic_vector( 3 downto 0 );
      mem_rdata:     in  std_logic_vector( 31 downto 0 );

      --Look-Ahead Interface
      mem_la_read:   out std_logic;
      mem_la_write:  out std_logic;
      mem_la_addr:   out std_logic_vector( 31 downto 0 );
      mem_la_wdata:  out std_logic_vector( 31 downto 0 );
      mem_la_wstrb:  out std_logic_vector( 3 downto 0 );

      --Pico Co-Processor Interface (PCPI)
      pcpi_valid:    out std_logic;
      pcpi_insn:     out std_logic_vector( 31 downto 0 );
      pcpi_rs1:      out std_logic_vector( 31 downto 0 );
      pcpi_rs2:      out std_logic_vector( 31 downto 0 );
      pcpi_wr:       in  std_logic;
      pcpi_rd:       in  std_logic_vector( 31 downto 0 );
      pcpi_wait:     in  std_logic;
      pcpi_ready:    in  std_logic;

      --IRQ Interface
      irq:           in  std_logic_vector( 31 downto 0 );
      eoi:           out std_logic_vector( 31 downto 0 );

      --Trace Interface
      trace_valid:   out std_logic;
      trace_data:    out std_logic_vector( 35 downto 0 )

);
end component;

-- UART
component UART
    port(
      --cpu interface
      reset:            in    std_logic;
      clock:            in    std_logic;
      a:                in    std_logic_vector( 15 downto 0 );
      din:              in    std_logic_vector( 31 downto 0 );
      dout:             out   std_logic_vector( 31 downto 0 );
      
      ce:               in    std_logic;
      wr:               in    std_logic;
      dataMask:         in    std_logic_vector( 3 downto 0 );
      
      ready:            out   std_logic;
      
      --uart interface
      uartTXD:          out std_logic;
      uartRXD:          in  std_logic
    );
end component;

component migDDR3
  port (
      ddr3_dq       : inout std_logic_vector(15 downto 0);
      ddr3_dqs_p    : inout std_logic_vector(1 downto 0);
      ddr3_dqs_n    : inout std_logic_vector(1 downto 0);

      ddr3_addr     : out   std_logic_vector(13 downto 0);
      ddr3_ba       : out   std_logic_vector(2 downto 0);
      ddr3_ras_n    : out   std_logic;
      ddr3_cas_n    : out   std_logic;
      ddr3_we_n     : out   std_logic;
      ddr3_reset_n  : out   std_logic;
      ddr3_ck_p     : out   std_logic_vector(0 downto 0);
      ddr3_ck_n     : out   std_logic_vector(0 downto 0);
      ddr3_cke      : out   std_logic_vector(0 downto 0);
	  ddr3_cs_n     : out   std_logic_vector(0 downto 0);
      ddr3_dm       : out   std_logic_vector(1 downto 0);
      ddr3_odt      : out   std_logic_vector(0 downto 0);
      app_addr                  : in    std_logic_vector(27 downto 0);
      app_cmd                   : in    std_logic_vector(2 downto 0);
      app_en                    : in    std_logic;
      app_wdf_data              : in    std_logic_vector(127 downto 0);
      app_wdf_end               : in    std_logic;
      app_wdf_mask         : in    std_logic_vector(15 downto 0);
      app_wdf_wren              : in    std_logic;
      app_rd_data               : out   std_logic_vector(127 downto 0);
      app_rd_data_end           : out   std_logic;
      app_rd_data_valid         : out   std_logic;
      app_rdy                   : out   std_logic;
      app_wdf_rdy               : out   std_logic;
      app_sr_req                : in    std_logic;
      app_ref_req               : in    std_logic;
      app_zq_req                : in    std_logic;
      app_sr_active             : out   std_logic;
      app_ref_ack               : out   std_logic;
      app_zq_ack                : out   std_logic;
      ui_clk                    : out   std_logic;
      ui_clk_sync_rst           : out   std_logic;
      init_calib_complete       : out   std_logic;
      -- System Clock Ports
      sys_clk_i                      : in    std_logic;
    sys_rst                     : in    std_logic
  );
end component migDDR3;
 
-- clocks

-- domain 1 - pllHDMI
signal clkd1_25:            std_logic;
signal clkd1_125:           std_logic;
signal clkd1_125ps:         std_logic;
signal pllHDMILocked:       std_logic;

-- domain 2 - pllSystem
signal clkd2_50:            std_logic;
signal clkd2_100:           std_logic;
signal clkd2_200:           std_logic;

-- reset
signal reset:               std_logic;
signal resetn:              std_logic; 


--dvi encoder
signal dviClock:    std_logic;
signal dviClockPs:  std_logic;
signal dviRed:      std_logic_vector(7 downto 0) := (others => '0');
signal dviGreen:    std_logic_vector(7 downto 0) := (others => '0');
signal dviBlue:     std_logic_vector(7 downto 0) := (others => '0');
signal dviHsync:    std_logic := '0';
signal dviVsync:    std_logic := '0';
signal dviBlank:    std_logic := '0';
signal red_s:       std_logic;
signal green_s:     std_logic;
signal blue_s:      std_logic;
signal clock_s:     std_logic;
   
-- video mux signals
signal vmMode:          std_logic_vector( 15 downto 0 );
   
-- txt pixel gen signals
signal pgClock:          std_logic;
signal pgVSync:          std_logic;
signal pgHSync:          std_logic;
signal pgDe:             std_logic;
signal pgR:              std_logic_vector( 7 downto 0 );
signal pgG:              std_logic_vector( 7 downto 0 );
signal pgB:              std_logic_vector( 7 downto 0 ); 
signal pgXCount:         std_logic_vector( 11 downto 0 );
signal pgYCount:         std_logic_vector( 11 downto 0 );
signal pgDeX:            std_logic;
signal pgDeY:            std_logic;
signal pgPreFetchLine:   std_logic;
signal pgFetchEnable:    std_logic;
signal videoRamBDout:    std_logic_vector( 15 downto 0 );
signal videoRamBA:       std_logic_vector( 13 downto 0 );

-- vsync signal synchronised to cpu clock domain
signal   pgVSyncClkD2:     std_logic;

-- gfx pixel gen signals
signal   pgEnabled:             std_logic;
signal   pggR:                  std_logic_vector( 7 downto 0 );
signal   pggG:                  std_logic_vector( 7 downto 0 );
signal   pggB:                  std_logic_vector( 7 downto 0 ); 
signal   pggDMARequest:         std_logic_vector( 1 downto 0 );
signal   pggDMARequestClkD2:    std_logic_vector( 1 downto 0 );

--font rom signals
signal fontRomA:        std_logic_vector( 10 downto 0 );
signal fontRomDout:     std_logic_vector( 7 downto 0 );


--system ram signals
signal  fpgaCpuMemoryClock:         std_logic;

signal  systemRAMCE:                std_logic;
signal  systemRamReady:             std_logic;
signal  systemRamDoutForCPU:        std_logic_vector( 31 downto 0 );
signal  systemRamDoutForPixelGen:   std_logic_vector( 31 downto 0 );
signal  systemRamDataIn:            std_logic_vector( 31 downto 0 );
signal  systemRamWr:                std_logic;

--cpu signals
signal cpuClock:        std_logic;
signal cpuResetn:       std_logic;
signal cpuAOut:         std_logic_vector( 29 downto 0 );
signal cpuDOut:         std_logic_vector( 31 downto 0 );

signal cpuMemValid:		std_logic;
signal cpuMemInstr:		std_logic; 
signal cpuMemReady:		std_logic;
signal cpuAOutFull:		std_logic_vector( 31 downto 0 );
signal cpuWrStrobe:		std_logic_vector( 3 downto 0 );
signal cpuDin:			std_logic_vector( 31 downto 0 );

signal cpuWr:			std_logic;
signal cpuDataMask:		std_logic_vector( 3 downto 0 );

--cpu resetgen
signal cpuResetGenCounter:  std_logic_vector( 15 downto 0 ); 

-- gpo signals
signal   gpoRegister:      std_logic_vector( 31 downto 0 );

-- registers signals
signal   registersClock:      std_logic;

type     regState_T is ( rsWaitForRegAccess, rsWaitForBusCycleEnd );
signal   registerState:       regState_T;

signal   registersCE:         std_logic;
signal   registersDoutForCPU: std_logic_vector( 31 downto 0 );


-- tick timer signals
signal   tickTimerClock:            std_logic;
signal   tickTimerReset:            std_logic;
signal   tickTimerPrescalerCounter: std_logic_vector( 31 downto 0 );
signal   tickTimerCounter:          std_logic_vector( 31 downto 0 );

constant tickTimerPrescalerValue:   integer:=   50000 - 1;  --1ms tick timer @50MHz

-- frameTimer signals
signal   frameTimerClock:        std_logic;
signal   frameTimerReset:        std_logic;
signal   frameTimerPgPrvVSync:   std_logic;
signal   frameTimerValue:        std_logic_vector( 31 downto 0 );

-- uart signals
signal   uartClock:           std_logic;

signal   uartCE:              std_logic;
signal   uartDoutForCPU:      std_logic_vector( 31 downto 0 );
signal   uartReady:           std_logic;

signal   uartTxd:             std_logic;
signal   uartRxd:             std_logic;


begin


--Reset logic based on PLL hdmi

resetn  <= pllHDMILocked;
reset   <= not resetn;


--Clock assignments

dviClock            <= clkd1_125;
dviClockPs          <= clkd1_125ps;
    
pgClock             <= clkd1_25;

fpgaCpuMemoryClock  <= not cpuClock;

cpuClock            <= clkd2_50;
registersClock      <= clkd2_100;
tickTimerClock      <= clkd2_50;
uartClock           <= clkd2_100;

--LEDs
leds    <= gpoRegister( 7 downto 0 ); 


--Place PLL hdmi

clockingHDMIInst: clockingHDMI
port map(
    
    clk_in1         => clk_in_100,
    reset           => reset_in,
    locked          => pllHDMILocked,
    
    clk_out1_125    => clkd1_125,
    clk_out2_125ps  => clkd1_125ps,
    clk_out3_25     => clkd1_25
   
);

--Place PLL system

clockingSystemInst:clockingSystem
port map(  

    clk_in1         => clk_in_100,
    reset           => reset_in,

    clk_out1_50     => clkd2_50,
    clk_out2_100    => clkd2_100,
    clk_out3_200    => clkd2_200
    
    -- Status and control signals
    --locked:         out    std_logic;

 );

--Place dvi encoder

dvidInst: dvid 
port map(

      clk       => dviClock,
      clk_n     => dviClockPs, 
      clk_pixel => pgClock,
      red_p     => dviRed,
      green_p   => dviGreen,
      blue_p    => dviBlue,
      blank     => dviBlank,
      hsync     => dviHsync,
      vsync     => dviVsync,
      
      red_s     => red_s,
      green_s   => green_s,
      blue_s    => blue_s,
      clock_s   => clock_s
   );
   
--Place ddr output buffers

OBUFDS_blue  : OBUFDS port map ( O  => data_p(0), OB => data_n(0), I  => blue_s  );
OBUFDS_red   : OBUFDS port map ( O  => data_p(1), OB => data_n(1), I  => green_s );
OBUFDS_green : OBUFDS port map ( O  => data_p(2), OB => data_n(2), I  => red_s   );
OBUFDS_clock : OBUFDS port map ( O  => clk_p, OB => clk_n, I  => clock_s );
    -- generic map ( IOSTANDARD => "DEFAULT")    


--Place text mode font rom ( 2048 x 8 )

fontPromInst: fontProm 
port map(
    clka    => pgClock,
    addra   => fontRomA,
    douta   => fontRomDout
);

-- Place system RAM ( 8192 x 32 )
   
systemRamInst: systemRam
port map(

    clka        => fpgaCpuMemoryClock,
    wea(0)      => cpuWrStrobe(0) and systemRAMCE,
    wea(1)      => cpuWrStrobe(1) and systemRAMCE,
    wea(2)      => cpuWrStrobe(2) and systemRAMCE,
    wea(3)      => cpuWrStrobe(3) and systemRAMCE,
    addra       => cpuAOut( 12 downto 0 ),
    dina        => cpuDOut,
    douta       => systemRamDoutForCPU,
    
    clkb        => pgClock,
    web         => "0000",
    addrb       => videoRamBA( 13 downto 1 ),
    dinb        => ( others => '0' ),
    doutb       => systemRamDoutForPixelGen

);

systemRamReady  <= '1';
   
videoRamBDout   <= systemRamDoutForPixelGen( 15 downto 0 ) when videoRamBA( 0 ) = '0' else systemRamDoutForPixelGen( 31 downto 16 );
     

--Place txt pixel gen

pixelGenInst: pixelGenTxt
port map(
    reset           => reset,
    pgClock         => pgClock,

    pgVSync         => pgVSync,
    pgHSync         => pgHSync,
    pgDe            => pgDe,
    pgR             => pgR,
    pgG             => pgG,
    pgB             => pgB,

    fontRomA        => fontRomA,
    fontRomDout     => fontRomDout,

    videoRamBA      => videoRamBA,
    videoRamBDout   => videoRamBDout,
        
    pgXCount        => pgXCount,
    pgYCount        => pgYCount,
    pgDeX           => pgDeX,
    pgDeY           => pgDeY,
    pgPreFetchLine  => pgPreFetchLine,
    pgFetchEnable   => pgFetchEnable,
      
    pgVideoMode     => vmMode( 3 downto 2 )
        
);   


--VideoMux process ( mix text with gfx )

videoMux: process( all )

begin

if rising_edge( pgClock ) then

    if reset = '1' then

        dviHsync    <= '0';
        dviVsync    <= '0';
        dviBlank    <= '1';
        
        dviRed		<= ( others => '0' );
        dviGreen    <= ( others => '0' );
        dviBlue     <= ( others => '0' );

    else
    
        case vmMode( 1 downto 0 ) is
        
            --text mode
            when "00" =>
            
                dviHsync    <= pgHSync;
                dviVsync    <= pgVSync;
                dviBlank    <= not pgDe;
                
                dviRed		<= pgR( 7 downto 3 ) & "000";
                dviGreen    <= pgG( 7 downto 2 ) & "00";
                dviBlue     <= pgB( 7 downto 3 ) & "000";
            
            --gfx mode
            when "01"	=>
            
                dviHsync    <= pgHSync;
                dviVsync    <= pgVSync;
                dviBlank    <= not pgDe;
                
                dviRed		<= pggR( 7 downto 3 ) & "000";
                dviGreen    <= pggG( 7 downto 2 ) & "00";
                dviBlue     <= pggB( 7 downto 3 ) & "000";

            --text over gfx mode
            when "10" =>
            
                dviHsync     <= pgHSync;
                dviVsync     <= pgVSync;
                dviBlank     <= not pgDe;

                if	pgR = x"00" and pgG = x"00" and pgB = x"00" then
                    
                    dviRed      <= pggR( 7 downto 3 ) & "000";
                    dviGreen    <= pggG( 7 downto 2 ) & "00";
                    dviBlue     <= pggB( 7 downto 3 ) & "000";
                    
                --gray color -> dim background
                elsif pgR = x"80" and pgG = x"80" and pgB = x"80" then
            
                    dviRed      <= "0" & pggR( 7 downto 4 ) & "000";
                    dviGreen    <= "0" & pggG( 7 downto 2 ) & "0";
                    dviBlue     <= "0" & pggB( 7 downto 4 ) & "000";
                    
                else

                    dviRed      <= pgR( 7 downto 3 ) & "000";
                    dviGreen    <= pgG( 7 downto 2 ) & "00";
                    dviBlue     <= pgB( 7 downto 3 ) & "000";
                
                end if;

            --gfx over text mode
            when "11" =>
            
                dviHsync        <= pgHSync;
                dviVsync        <= pgVSync;
                dviBlank        <= not pgDe;


                if	pggR = x"00" and pggG = x"00" and pggB = x"00" then
                    
                    dviRed      <= pgR( 7 downto 3 ) & "000";
                    dviGreen    <= pgG( 7 downto 2 ) & "00";
                    dviBlue     <= pgB( 7 downto 3 ) & "000";
                    
                else

                    dviRed      <= pggR( 7 downto 3 ) & "000";
                    dviGreen    <= pggG( 7 downto 2 ) & "00";
                    dviBlue     <= pggB( 7 downto 3 ) & "000";
                    
                end if;

            when others =>
            
        end case;
    
    end if;

end if;

end process; 


-- place picorv32
   
-- bus signals
    cpuAOut           <= cpuAOutFull( 31 downto 2 );

    cpuWr             <= cpuWrStrobe( 3 ) or cpuWrStrobe( 2 ) or cpuWrStrobe( 1 ) or cpuWrStrobe( 0 );

    cpuDataMask       <= cpuWrStrobe when cpuWr = '1' else "1111";


-- chip selects
    systemRAMCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"000" else '0';

--    dmaMemoryCE       <= '1' when ( cpuMemValid = '1'  ) and cpuAOutFull( 31 downto 24 ) = x"20" else '0';
         
    registersCE       <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f00" else '0';

--    fpAluCE           <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f01" else '0';
   
--    blitterCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f02" else '0';
    
--    usbHostCE         <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f03" else '0';

    uartCE            <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f04" else '0';

--    spiCE             <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f05" else '0';

--    i2sCE             <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f06" else '0';

--    flashSpiCE        <= '1' when ( cpuMemValid = '1' ) and cpuAOutFull( 31 downto 20 ) = x"f07" else '0';
    

-- bus slaves ready signals mux
   cpuMemReady       <= systemRamReady when systemRAMCE = '1'
                        else uartReady when uartCE = '1' 
--                        else spiReady when spiCE = '1' 
--                        else usbHostReady when usbHostCE = '1' 
                        else '1' when registersCE = '1' 
--                        else cpuDmaReady when dmaMemoryCE = '1' 
--                        else blitterReady when blitterCE = '1' 
--                        else fpAluReady when fpAluCE = '1' 
--                        else i2sReady when i2sCE = '1' 
--                        else flashSpiReady when flashSpiCE = '1' 
                        else '1';


-- bus slaves data outputs mux
   cpuDin            <= systemRamDoutForCPU                       when cpuAOutFull( 31 downto 20 ) = x"000" else 
                        uartDoutForCPU                            when cpuAOutFull( 31 downto 20 ) = x"f04" else
--                        spiDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f05" else
--                        usbHostDoutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f03" else 
                        registersDoutForCPU                       when cpuAOutFull( 31 downto 20 ) = x"f00" else
--                        dmaDoutForCPU                             when cpuAOutFull( 31 downto 24 ) = x"20"  else
--                        blitterDoutForCPU                         when cpuAOutFull( 31 downto 20 ) = x"f02" else
--                        fpAluDoutForCPU                           when cpuAOutFull( 31 downto 20 ) = x"f01" else
--                        i2sDoutForCPU                             when cpuAOutFull( 31 downto 20 ) = x"f06" else 
--                        flashSpiDoutForCPU                        when cpuAOutFull( 31 downto 20 ) = x"f07" else                        
                        x"00000000";

                     
-- the cpu
   picorv32Inst: picorv32 
   port map
   (
      clk               => cpuClock,
      resetn            => cpuResetn,

      mem_valid         => cpuMemValid,
      mem_instr         => cpuMemInstr,
      mem_ready         => cpuMemReady,

      mem_addr          => cpuAOutFull,
      mem_wdata         => cpuDOut,
      mem_wstrb         => cpuWrStrobe,
      mem_rdata         => cpuDin,

      pcpi_wr           => '0',
      pcpi_rd           => ( others => '0' ),
      pcpi_wait         => '0',
      pcpi_ready        => '0',

      --IRQ Interface
      irq               => ( others => '0' )
      --eoi:            out std_logic_vector( 31 downto 0 );
);
 


--cpu resetgen process
cpuResetGen: process( all )

begin
    
    if reset = '1' then

        cpuResetn           <= '0';
        cpuResetGenCounter  <= x"ffff";

    else

        if rising_edge( cpuClock ) then

            if cpuResetGenCounter /= x"0000" then

                cpuResetn           <= '0';
                cpuResetGenCounter  <= cpuResetGenCounter - 1;
                
            else

                cpuResetn           <= '1';

            end if;
        end if;
    end if;

end process;

--registers process
registers: process( all )

begin
   
   if rising_edge( registersClock ) then
   
      if reset = '1' then
      
         registersDoutForCPU  <= ( others => '0' );
         
         --default register values
         vmMode                  <= x"0000";
--         dmaDisplayPointerStart  <= ( others => '0' );
         gpoRegister             <= x"0000" & "0000000101111111";             --turn on last LED, tang flash CS high by default
         
         tickTimerReset             <= '0';
                  
         registerState              <= rsWaitForRegAccess;

      else
      
         tickTimerReset             <= '0';
         frameTimerReset            <= '0';
         
         case registerState is
         
            when rsWaitForRegAccess =>
         
               if registersCE = '1' then
                  
                  case cpuAOut( 7 downto 0 ) is
               
               
                     --rw 0xf0000000 - videoMuxMode
                     when x"00" =>
               
                        registersDoutForCPU  <= x"0000" & vmMode;
                        
                        if cpuWr = '1' then
                        
                           vmMode   <= cpuDOut( 15 downto 0 );
                        
                        end if;
               
                     --rw 0xf0000004 - videoVSync
                     when x"01" =>
               
                        registersDoutForCPU  <= x"0000" & x"000" & "000" & pgVSync;

                     --rw 0xf0000008 - dmaDisplayPointerStart
                     when x"02" =>
               
--                        registersDoutForCPU  <= "00000000000" & dmaDisplayPointerStart;
                        
                        if cpuWr = '1' then
                        
--                           dmaDisplayPointerStart  <= cpuDOut( 20 downto 0 );
                        
                        end if;
                                       
                     --rw 0xf000000c - gpoPort
                     when x"03" =>
               
                        registersDoutForCPU  <= gpoRegister;
                        
                        if cpuWr = '1' then
                        
                           gpoRegister <= cpuDOut( 31 downto 0 );
                        
                        end if;
                        
                     ---w 0xf0000010 - tickTimerConfig
                     when x"04" =>
                                 
                        if cpuWr = '1' then
                        
                           tickTimerReset <= cpuDOut( 0 );
                        
                        end if;  
                        
                     --r- 0xf0000014 - tickTimerValue
                     when x"05" =>
                              
                        registersDoutForCPU  <= tickTimerCounter;
                           
                              
                              
                     --rw 0xf0000018 - frameTimer (write resets timer)
                     when x"06" =>
                     
                        registersDoutForCPU  <= frameTimerValue;
                     
                        if cpuWr = '1' then
                           
                              frameTimerReset <= '1';
                              
                        end if;
                                             

                     when others =>

                        registersDoutForCPU  <= ( others => '0' );
                     
                  end case; --cpuAOut( 7 downto 0 ) is
               
                  registerState  <= rsWaitForBusCycleEnd;
               
               end if; --registersCE = '1'
         
            when rsWaitForBusCycleEnd =>
                     
               --wait for bus cycle to end
               if registersCE = '0' then
               
                  registerState <= rsWaitForRegAccess;
                  
               end if;
         
            when others =>

               registerState <= rsWaitForRegAccess;
            
         end case;   --registerState is
         
      end if; --! reset = '1'
         
   end if; --rising_edge( registersClock )
   

end process;

--tick timer process
tickTimer: process( all )
begin

   if rising_edge( tickTimerClock ) then
   
      if reset = '1' then
         
         tickTimerPrescalerCounter  <= ( others => '0' );
         tickTimerCounter           <= ( others => '0' );
         
      
      else
      
         if tickTimerPrescalerCounter /= x"00000000" then
            
            tickTimerPrescalerCounter <= tickTimerPrescalerCounter - 1;
            
         else
         
            tickTimerPrescalerCounter <= conv_std_logic_vector( tickTimerPrescalerValue, tickTimerPrescalerCounter'length );
            
            tickTimerCounter <= tickTimerCounter + 1;
         
         end if;
      
         if tickTimerReset = '1' then

            tickTimerPrescalerCounter  <= ( others => '0' );
            tickTimerCounter           <= ( others => '0' );
         
         end if;
         
      
      end if;  --reset = '1'
   
   
   end if; --rising_edge( tickTimerClock )

end process;

--Place UART

uart_tx     <= uartTXD;
uartRXD     <= uart_rx;

UARTInst: UART
port map(
  reset    => reset,
  clock    => uartClock,     
  
  a        => cpuAOut( 15 downto 0 ),
  din      => cpuDOut,
  dout     => uartDoutForCPU,
  ce       => uartCE,
  wr       => cpuWr,
  dataMask => cpuDataMask,
  ready    => uartReady,        
    
  uartTXD  => uartTXD,
  uartRXD  => uartRXD
  
);  


--Place MIG

migDDR3Inst:migDDR3
  port map(
      ddr3_dq           => ddr3_dq,
      ddr3_dqs_p        => ddr3_dqs_p,
      ddr3_dqs_n        => ddr3_dqs_n,

      ddr3_addr         => ddr3_addr,
      ddr3_ba           => ddr3_ba,
      ddr3_ras_n        => ddr3_ras_n,
      ddr3_cas_n        => ddr3_cas_n,
      ddr3_we_n         => ddr3_we_n,
      ddr3_reset_n      => ddr3_reset_n,
      ddr3_ck_p         => ddr3_ck_p,
      ddr3_ck_n         => ddr3_ck_n,
      ddr3_cke          => ddr3_cke,
	  ddr3_cs_n         => ddr3_cs_n,
      ddr3_dm           => ddr3_dm,
      ddr3_odt          => ddr3_odt,
      
      app_addr          => ( others => '0' ),   --std_logic_vector(27 downto 0);
      app_cmd           => ( others => '0' ),   --std_logic_vector(2 downto 0);
      app_en            => '0',
      app_wdf_data      => ( others => '0' ),   --std_logic_vector(127 downto 0);
      app_wdf_end       => '0',
      app_wdf_mask      => ( others => '0' ),   --std_logic_vector(15 downto 0);
      app_wdf_wren      => '0',
      
      --app_rd_data               : out   std_logic_vector(127 downto 0);
      --app_rd_data_end           : out   std_logic;
      --app_rd_data_valid         : out   std_logic;
      --app_rdy                   : out   std_logic;
      --app_wdf_rdy               : out   std_logic;
      
      app_sr_req        => '0',
      app_ref_req       => '0',
      app_zq_req        => '0',
      --app_sr_active             : out   std_logic;
      --app_ref_ack               : out   std_logic;
      --app_zq_ack                : out   std_logic;
      --ui_clk                    : out   std_logic;
      --ui_clk_sync_rst           : out   std_logic;
      --init_calib_complete       : out   std_logic;
      -- System Clock Ports
      sys_clk_i         => clkd2_200,
      sys_rst           => reset
  );


end Behavioral;
