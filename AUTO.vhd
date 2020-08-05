LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY AUTO IS
	PORT (
		FLOW    : IN STD_LOGIC;--溢出指示
		HZERO   : IN STD_LOGIC;--接收锁存器高位零
		LOCK    : IN STD_LOGIC;--接受锁存器信号
		S1      : OUT STD_LOGIC;
		S2      : OUT STD_LOGIC;--输到gate决定是否十分频
		OVER    : OUT STD_LOGIC--溢出信号输出亮灯
);
END AUTO;

ARCHITECTURE ARCHITECTURE_AUTO OF AUTO IS
	SIGNAL   SIG1        :STD_LOGIC:='1';
	SIGNAL   SIG2        :STD_LOGIC:='0';
BEGIN 
	PROCESS(LOCK) 
	BEGIN
	IF (LOCK 'EVENT AND LOCK = '0' ) THEN
	IF(FLOW = '1') THEN   --溢出则上调一位
			IF(SIG1 = '0' AND SIG2 = '0') THEN
				SIG1 <= '1';
				SIG2 <= '0';
			ELSIF (SIG1 = '1' AND SIG2 = '0') THEN
				SIG1 <= '0';
				SIG2 <= '1';
			ELSIF (SIG1 = '0' AND SIG2 = '1') THEN
				OVER <= '1';
			END IF;
		ELSE OVER <= '0';
		END IF;
	
		IF(HZERO = '1') THEN --高位零则下调一位
			IF (SIG2 = '1' AND SIG1 = '0') THEN
				SIG2 <= '0';
				SIG1 <= '1';
			ELSIF (SIG2 = '0' AND SIG1 = '1') THEN
				SIG2 <= '1';
				SIG1 <= '0';
			END IF;
		END IF;
	END IF;
	END PROCESS;
	S2 <= SIG2;
	S1 <= SIG1;
END ARCHITECTURE_AUTO;