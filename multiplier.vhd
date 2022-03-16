library IEEE;
use IEEE.std_logic_1164.all;

entity multiplier is
port(
  A0_in: in std_logic;
  A1_in: in std_logic;
  B0_in: in std_logic;
  B1_in: in std_logic;
  C0: out std_logic;
  C1: out std_logic;
  C2: out std_logic;
  C3: out std_logic;
  C0_check: out std_logic;
  C1_check: out std_logic;
  C2_check: out std_logic;
  C3_check: out std_logic;
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
  disp_th: out std_logic
  );
end multiplier;

architecture arc_multiplier of multiplier is
begin
  process(A1_in, A0_in, B1_in, B0_in) is
  variable A1: std_logic;
  variable A0: std_logic;
  variable B1: std_logic;
  variable B0: std_logic;
  variable A1B1: std_logic;
  variable A0B0: std_logic;
  variable A0B1: std_logic;
  variable A1B0: std_logic;
  variable al: std_logic;
  variable be: std_logic;
  variable ga: std_logic;
  variable de: std_logic;
  variable al_or_be: std_logic;
  variable ga_or_de: std_logic;
  variable si: std_logic;
  variable th: std_logic;
  variable cc0: std_logic;
  variable cc1: std_logic;
  variable cc2: std_logic;
  variable cc3: std_logic;
  variable c0_c: std_logic;
  variable c1_c: std_logic;
  variable c2_c: std_logic;
  variable c3_c: std_logic;

  begin
    A1 := A1_in;
    A0 := A0_in;
    B1 := B1_in;
    B0 := B0_in;

    A1B1 := not(A1 nand B1);
    A0B0 := not(A0 nand B0);
    A0B1 := not(A0 nand B1);
    A1B0 := not(A1 nand B0);

    al := not(A0B1 nand not(A1));
    be := not(A0B1 nand not(B0));
    ga := not(A1B0 nand not(A0));
    de := not(A1B0 nand not(B1));
    si := not(A1B1 nand not(B0));
    th := not(A1B1 nand not(A0));

    al_or_be := not(al nor be);
    ga_or_de := not(ga nor de);

    -- display intermediate lines
    disp_A1B1 <= A0B1;
    disp_A0B0 <= A1B0;
    disp_A0B1 <= A0B1;
    disp_A1B0 <= A1B0;
    disp_al <= al;
    disp_be <= be;
    disp_ga <= ga;
    disp_de <= de;
    disp_al_or_be <= al_or_be;
    disp_ga_or_de <= ga_or_de;
    disp_si <= si;
    disp_th <= th;

    -- C0
    C0 <= A0B0;
    cc0 := A0B0;
    C0_check <= A0 and B0;
    c0_c := A0 and B0;
    if cc0/=c0_c then
      C0 <= 'X';
    end if;
    -- C1
    C1 <= not(al_or_be nor ga_or_de);
    cc1 := not(al_or_be nor ga_or_de);
    C1_check <= (A0 and not A1 and B1) or (A0 and not B0 and B1) or (not A0 and A1 and B0) or (A1 and B0 and not B1);
    c1_c := (A0 and not A1 and B1) or (A0 and not B0 and B1) or (not A0 and A1 and B0) or (A1 and B0 and not B1);
    if cc1/=c1_c then
      C1 <= 'X';
    end if;
    -- C2 not(not(not(A1 nand B1) nand (not B0)) nor not(not(A1 nand B1) nand (not A0)))
    C2 <= not(si nor th);
    C2_check <= (A1 and B1 and not B0) or (A1 and not A0 and B1);
    cc2 := not(si nor th);
    c2_c := (A1 and B1 and not B0) or (A1 and not A0 and B1);
    if cc2/=c2_c then
      C2 <= 'X';
    end if;
    -- C3 not(not(not(A1 nand A0) nand B1) nand B0)
    C3 <= not(A0B0 nand A1B1);
    C3_check <= A1 and A0 and B1 and B0;
    cc3 := not(A0B0 nand A1B1);
    c3_c := A1 and A0 and B1 and B0;
    if cc3/=c3_c then
      C3 <= 'X';
    end if;
  end process;
end arc_multiplier;
