-- generated by newgenasym Sun Jun 10 08:44:13 2007

library ieee;
use     ieee.std_logic_1164.all;
use     work.all;
entity ac_hc_04_v1 is
    generic (
        size:positive:= 1
            );
    port (    
	A:         IN     STD_LOGIC_VECTOR (size-1 DOWNTO 0);    
	\o*\:      OUT    STD_LOGIC_VECTOR (size-1 DOWNTO 0));
end ac_hc_04_v1;
