LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DIV IS
	PORT(
		CLK:   IN STD_LOGIC;
		SW:    IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		FX:    OUT STD_LOGIC
	);
END DIV;

ARCHITECTURE ARCHITECTURE_DIV OF DIV IS
SIGNAL F0,F1,F2,F3,F4,F5,F6:STD_LOGIC;

BEGIN
------------------------------------------
PROCESS(CLK)--10Hz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=2500001) THEN F0<='1';
		ELSIF(COUNT_DIV < 5000001) THEN 
			F0 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
-------------------------------------------
PROCESS(CLK)--26Hz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=961538) THEN F1<='1';
		ELSIF(COUNT_DIV < 1923076) THEN 
			F1 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
----------------------------------------------
PROCESS(CLK)--200Hz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=125000) THEN F2<='1';
		ELSIF(COUNT_DIV < 250000) THEN 
			F2 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
-----------------------------------------------
PROCESS(CLK)--716Hz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=34916) THEN F3<='1';
		ELSIF(COUNT_DIV < 69832) THEN 
			F3 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
------------------------------------------------
PROCESS(CLK)--3.33KHz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=7507) THEN F4<='1';
		ELSIF(COUNT_DIV < 15015) THEN 
			F4 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
------------------------------------------------
PROCESS(CLK)--12KHz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=2083) THEN F5<='1';
		ELSIF(COUNT_DIV < 4166) THEN 
			F5 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
-------------------------------------------------
PROCESS(CLK)--200Hz分频
VARIABLE COUNT_DIV:=0;
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		COUNT_DIV:=COUNT_DIV + 1;
		IF(COUNT<=1000) THEN F6 <= '1';
		ELSIF(COUNT_DIV < 2000) THEN 
			F6 <= '0';
		ELSE COUNT_DIV:=0;
		END IF;
	END IF;
END PROCESS;
--------------------------------------------------
--------------------------------------------------
--=========选择电路======================
PROCESS(SW)
BEGIN
	IF(CLK'EVENT AND CLK = '1') THEN
		CASE SW IS
			WHEN "1000000" =>FX<= F0;
			WHEN "1100000" =>FX<= F1;
			WHEN "1110000" =>FX<= F2;
			WHEN "1111000" =>FX<= F3;
			WHEN "1111100" =>FX<= F4;
			WHEN "1111110" =>FX<= F5;
			WHEN "1111111" =>FX<= F6;
			WHEN   OTHERS  =>FX<= '0';
		END CASE;
	END IF;
END ARCHITECTRUE_DIV



















