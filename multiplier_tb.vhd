library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity multiplier_tb is
end;

architecture bench of multiplier_tb is

  component multiplier
  port(
    A1_in: in std_logic;
    A0_in: in std_logic;
    B1_in: in std_logic;
    B0_in: in std_logic;
    disp_A1B1: out std_logic;
    disp_A0B0: out std_logic;
    disp_A0B1: out std_logic;
    disp_A1B0: out std_logic;
    disp_al: out std_logic;
    disp_be: out std_logic;
    disp_ga: out std_logic;
    disp_de: out std_logic;
    disp_al_or_be: out std_logic;
    disp_ga_or_de: out std_logic;
    disp_si: out std_logic;
    disp_th: out std_logic;
    C0: out std_logic;
    C1: out std_logic;
    C2: out std_logic;
    C3: out std_logic;
    C0_check: out std_logic;
    C1_check: out std_logic;
    C2_check: out std_logic;
    C3_check: out std_logic
    );
  end component;

  signal A1_in: std_logic;
  signal A0_in: std_logic;
  signal B1_in: std_logic;
  signal B0_in: std_logic;
  signal C0: std_logic;
  signal C1: std_logic;
  signal C2: std_logic;
  signal C3: std_logic;
  signal C0_check: std_logic;
  signal C1_check: std_logic;
  signal C2_check: std_logic;
  signal C3_check: std_logic;
  signal disp_A1B1: std_logic;
  signal disp_A0B0: std_logic;
  signal disp_A0B1: std_logic;
  signal disp_A1B0: std_logic;
  signal disp_al: std_logic;
  signal disp_be: std_logic;
  signal disp_ga: std_logic;
  signal disp_de: std_logic;
  signal disp_al_or_be: std_logic;
  signal disp_ga_or_de: std_logic;
  signal disp_si: std_logic;
  signal disp_th: std_logic;

begin

  uut: multiplier port map ( 
                        A1_in         => A1_in,
                        A0_in         => A0_in,
                        B1_in         => B1_in,
                        B0_in         => B0_in,
                        C0            => C0,
                        C1            => C1,
                        C2            => C2,
                        C3            => C3,
                        C0_check      => C0_check,
                        C1_check      => C1_check,
                        C2_check      => C2_check,
                        C3_check      => C3_check,
                        disp_A1B1     => disp_A1B1,
                        disp_A0B0     => disp_A0B0,
                        disp_A0B1     => disp_A0B1,
                        disp_A1B0     => disp_A1B0,
                        disp_al       => disp_al,
                        disp_be       => disp_be,
                        disp_ga       => disp_ga,
                        disp_de       => disp_de,
                        disp_al_or_be => disp_al_or_be,
                        disp_ga_or_de => disp_ga_or_de,
                        disp_si       => disp_si,
                        disp_th       => disp_th );

  stimulus: process
  begin
  
    -- Put initialisation code here
      A1_in <= '0'; 
      A0_in <= '0';
      B1_in <= '0'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '0';
      B1_in <= '0'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '0';
      B1_in <= '1'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '0';
      B1_in <= '1'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '1';
      B1_in <= '0'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '1';
      B1_in <= '0'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '1';
      B1_in <= '1'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '0'; 
      A0_in <= '1';
      B1_in <= '1'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '0';
      B1_in <= '0'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '0';
      B1_in <= '0'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '0';
      B1_in <= '1'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '0';
      B1_in <= '1'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '1';
      B1_in <= '0'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '1';
      B1_in <= '0'; 
      B0_in <= '1';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '1';
      B1_in <= '1'; 
      B0_in <= '0';
      wait for 20 ns;

      A1_in <= '1'; 
      A0_in <= '1';
      B1_in <= '1'; 
      B0_in <= '1';
      wait for 20 ns;

    wait;
  end process;
end;