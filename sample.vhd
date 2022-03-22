library IEEE;
use ieee.std_logic_1164.all;

entity and_gate is
    -- ådder with three input signals
    port(
        A   : in std_logic;
        B   : in std_logic;
        C   : in std_logic;
        F   : out std_logic
    );
end entity;

architecture system of and_gate is 
    begin
        F <= A and B and C;
end architecture;