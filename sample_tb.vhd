-- A generalized test bench suit in vdhl requiring only input of bit type
library IEEE;
use ieee.std_logic_1164.all; -- contains std_logic data types
use IEEE.numeric_std.all; -- contains function like "to_unsigned"


entity and_gate_tb is
    -- the test bench requires no input ports
end and_gate_tb;


architecture system of and_gate_tb is
    -- declarations

    --components
    component and_gate
        port(
            A   : in std_logic;
            B   : in std_logic;
            C   : in std_logic;
            F   : out std_logic
        );
    end component;

    --signals
    signal signal_a, signal_b, signal_c, signal_f : std_logic;
    constant n: integer := 3; --number of signals -- in this case i have 3
   

    begin 
    -- processes

    -- instantiation of component and port mapping
    comp : and_gate port map (
            A => signal_a,
            B => signal_b,
            C => signal_b,
            F => signal_f
        );
    process
        variable k: integer := 2**n; --value to hold possible number of signal values
        begin    
            for i in 0 to (6) loop
                (signal_a,signal_b,signal_c) <= std_logic_vector(to_unsigned(i, n));
                report "signal_a: " & std_logic'image(signal_a);
                report "signal_b: " & std_logic'image(signal_b);
                report "signal_c: " & std_logic'image(signal_c);
                wait for 10 ns;
                report "nothing";
                report "signal_f: " & std_logic'image(signal_f);
            end loop;
        wait;
    end process;

end architecture;
