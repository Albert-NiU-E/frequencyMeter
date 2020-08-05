LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CNT1K IS
PORT
(
	ENABLE    :IN STD_LOGIC;--使能控制
	CLEAR     :IN STD_LOGIC;--清零
	CLK       :IN STD_LOGIC;--时钟
	FLOW      :OUT STD_LOGIC;--溢出信号
	Q1        :OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2        :OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q3        :OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END CNT1K;
ARCHITECTURE ARCHITECTURE_CNT OF CNT1K IS
BEGIN 
	PROCESS(CLK)
		VARIABLE C1,C2,C3,C4:INTEGER:=0;
	BEGIN
		IF (ENABLE = '1') THEN 
			IF (CLK 'EVENT AND CLK='1') THEN
				IF (C1=9 AND C2<9) THEN
					C1:=0;
					C2:=C2+1;
				ELSIF (C1=9 AND C2=9 AND C3<9) THEN
					C1:=0;
					C2:=0;
					C3:=C3+1;
				ELSIF (C1=9 AND C2=9 AND C3=9) THEN 
					C1:=0;
					C2:=0;
					C3:=0;
					C4:=1;
				ELSE C1:=C1+1;
				END IF;
				IF C4=1 THEN 
					FLOW<='1';
				ELSE FLOW<='0';
				END IF;
			END IF;
		END IF;
		
		IF C1=0    THEN Q1<="0000";
		ELSIF C1=1 THEN Q1<="0001";
		ELSIF C1=2 THEN Q1<="0010";
		ELSIF C1=3 THEN Q1<="0011";
		ELSIF C1=4 THEN Q1<="0100";
		ELSIF C1=5 THEN Q1<="0101";
		ELSIF C1=6 THEN Q1<="0110";
		ELSIF C1=7 THEN Q1<="0111";
		ELSIF C1=8 THEN Q1<="1000";
		ELSIF C1=9 THEN Q1<="1001";
		END IF;
		
		IF C2=0    THEN Q2<="0000";
		ELSIF C2=1 THEN Q2<="0001";
		ELSIF C2=2 THEN Q2<="0010";
		ELSIF C2=3 THEN Q2<="0011";
		ELSIF C2=4 THEN Q2<="0100";
		ELSIF C2=5 THEN Q2<="0101";
		ELSIF C2=6 THEN Q2<="0110";
		ELSIF C2=7 THEN Q2<="0111";
		ELSIF C2=8 THEN Q2<="1000";
		ELSIF C2=9 THEN Q2<="1001";
		END IF;
		
		
	   IF C3=0    THEN Q3<="0000";
		ELSIF C3=1 THEN Q3<="0001";
		ELSIF C3=2 THEN Q3<="0010";
		ELSIF C3=3 THEN Q3<="0011";
		ELSIF C3=4 THEN Q3<="0100";
		ELSIF C3=5 THEN Q3<="0101";
		ELSIF C3=6 THEN Q3<="0110";
		ELSIF C3=7 THEN Q3<="0111";
		ELSIF C3=8 THEN Q3<="1000";
		ELSIF C3=9 THEN Q3<="1001";
		END IF;
		
	IF CLEAR='0' THEN
		C1:=0;
		C2:=0;
		C3:=0;
		C4:=0;
		FLOW<='0';
	END IF;
	END PROCESS;
END ARCHITECTURE_CNT;
						