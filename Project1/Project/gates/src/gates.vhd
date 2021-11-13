---------------------------------------------------- the gates library ----------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
package MY_GATES is
	COMPONENT xor2 IS 
		PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);
    END COMPONENT xor2;	
	COMPONENT xnor2 IS 
		PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);
    END COMPONENT xnor2;	
    COMPONENT and2 IS 
		PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);    
	END COMPONENT and2;	
    COMPONENT or2 IS
        PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);
    END COMPONENT or2;	
	COMPONENT not1 IS 
		PORT (a: IN STD_LOGIC; b: OUT STD_LOGIC);
    END COMPONENT not1;
	COMPONENT nand2 IS 
		PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);
    END COMPONENT nand2;	
	COMPONENT nor2 IS 
		PORT (a, b: IN STD_LOGIC; c: OUT STD_LOGIC);
    END COMPONENT nor2;
	COMPONENT or3 IS 
		PORT (a, b,c: IN STD_LOGIC; d: OUT STD_LOGIC);
    END COMPONENT or3;
end package MY_GATES;

----------------------------------------------------NOT gate 4ns delay----------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;    
ENTITY not1 IS 
	PORT( a: IN std_logic;
	b: OUT std_logic);
END ENTITY not1;
ARCHITECTURE simple OF not1 IS
BEGIN
	b <= NOT a AFTER 4ns;	
END	ARCHITECTURE simple;		 
---------------------------------------------------NAND gate 5ns delay -----------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;  

ENTITY nand2 IS
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY nand2;
ARCHITECTURE simple OF nand2 IS
BEGIN
	c <= a NAND b AFTER 5ns;
END ARCHITECTURE simple;
--------------------------------------------------- NOR gate 5ns delay -----------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
 
ENTITY nor2 IS 
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY nor2;
ARCHITECTURE simple OF nor2 IS
BEGIN
	c <= a NOR b AFTER 5ns;
END ARCHITECTURE simple;
--------------------------------------------------- AND gate 7ns delay -----------------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;  

ENTITY and2 IS 
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY and2;
ARCHITECTURE simple OF and2 IS
BEGIN
	c <= a AND b AFTER 7ns;
END ARCHITECTURE simple;
--------------------------------------------------- OR gate 7ns delay (A OR B )-----------------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY or2 IS 
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY or2;
ARCHITECTURE simple OF or2 IS
BEGIN
	c <= a OR b AFTER 7ns;
END ARCHITECTURE simple;
--------------------------------------------------- OR gate 7ns delay (A OR B OR C)-----------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY or3 IS 
	PORT(a, b,c: IN std_logic;
	d: OUT std_logic);
END ENTITY or3;
ARCHITECTURE simple OF or3 IS
BEGIN
	d <= a OR b OR c AFTER 7ns;
END ARCHITECTURE simple;
--------------------------------------------------- XOR gate  11ns delay-----------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 

ENTITY xor2 IS 
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY xor2;
ARCHITECTURE simple OF xor2 IS
BEGIN
	c <= a XOR b AFTER 11ns;
END ARCHITECTURE simple;
--------------------------------------------------- XNOR gate 9ns delay  -----------------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 

ENTITY xnor2 IS 
	PORT(a, b: IN std_logic;
	c: OUT std_logic);
END ENTITY xnor2;
ARCHITECTURE simple OF xnor2 IS
BEGIN
	c <= a XNOR b AFTER 9ns;
END ARCHITECTURE simple;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------









