LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DISPLAY IS
	PORT( 
		CLK    :IN  STD_LOGIC;
		S1     :IN  STD_LOGIC;
		S2     :IN  STD_LOGIC;
		HEX0   :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX1   :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX2   :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX3   :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Q      :IN  STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
END DISPLAY;

ARCHITECTURE ARCHITECTURE_DISPLAY OF DISPLAY IS
		SIGNAL S2S1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	PROCESS(CLK)
		BEGIN
			S2S1 <= (S2 & S1);
			IF(CLK 'EVENT AND CLK = '1') THEN
				IF (S2S1 = "00" OR S2S1 = "01") THEN
					HEX0 <= "10001001";--H
				ELSE HEX0 <= "10001111";--K
				END IF;
			END IF;
		END PROCESS;
	
	PROCESS(CLK)
	BEGIN
		IF(CLK 'EVENT AND CLK = '1') THEN
			CASE Q(3 DOWNTO 0) IS
				WHEN "0000" =>
               HEX1 <= "11000000";
            WHEN "0001" =>
               HEX1 <= "11111001";
            WHEN "0010" =>
               HEX1 <= "10100100";
            WHEN "0011" =>
               HEX1 <= "10110000";
            WHEN "0100" =>
               HEX1 <= "10011001";
            WHEN "0101" =>
               HEX1 <= "10010010";
            WHEN "0110" =>
               HEX1 <= "10000010";
            WHEN "0111" =>
               HEX1 <= "11111000";
            WHEN "1000" =>
               HEX1 <= "10000000";
            WHEN "1001" =>
               HEX1 <= "10010000";
            WHEN OTHERS =>
         END CASE;
		END IF;
	END PROCESS;
	
	
	PROCESS (CLK)--中位显示
   BEGIN
      IF (CLK'EVENT AND CLK = '1') THEN
         IF (S2S1 = "00") THEN
            CASE Q(7 DOWNTO 4) IS
               WHEN "0000" =>
                  HEX2 <= "01000000";
               WHEN "0001" =>
                  HEX2 <= "01111001";
               WHEN "0010" =>
                  HEX2 <= "00100100";
               WHEN "0011" =>
                  HEX2 <= "00110000";
               WHEN "0100" =>
                  HEX2 <= "00011001";
               WHEN "0101" =>
                  HEX2 <= "00010010";
               WHEN "0110" =>
                  HEX2 <= "00000010";
               WHEN "0111" =>
                  HEX2 <= "01111000";
               WHEN "1000" =>
                  HEX2 <= "00000000";
               WHEN "1001" =>
                  HEX2 <= "00010000";
               WHEN OTHERS =>
            END CASE;
         ELSE
            CASE Q(7 DOWNTO 4) IS
               WHEN "0000" =>
                  HEX2 <= "11000000";
               WHEN "0001" =>
                  HEX2 <= "11111001";
               WHEN "0010" =>
                  HEX2 <= "10100100";
               WHEN "0011" =>
                  HEX2 <= "10110000";
               WHEN "0100" =>
                  HEX2 <= "10011001";
               WHEN "0101" =>
                  HEX2 <= "10010010";
               WHEN "0110" =>
                  HEX2 <= "10000010";
               WHEN "0111" =>
                  HEX2 <= "11111000";
               WHEN "1000" =>
                  HEX2 <= "10000000";
               WHEN "1001" =>
                  HEX2 <= "10010000";
               WHEN OTHERS =>
            END CASE;
         END IF;
      END IF;
   END PROCESS;
	PROCESS (CLK)--高位显示
   BEGIN
      IF (CLK'EVENT AND CLK = '1') THEN
         IF (S2 = '1') THEN
            CASE Q(11 DOWNTO 8) IS
               WHEN "0000" =>
                  HEX3 <= "01000000";
               WHEN "0001" =>
                  HEX3 <= "01111001";
               WHEN "0010" =>
                  HEX3 <= "00100100";
               WHEN "0011" =>
                  HEX3 <= "00110000";
               WHEN "0100" =>
                  HEX3 <= "00011001";
               WHEN "0101" =>
                  HEX3 <= "00010010";
               WHEN "0110" =>
                  HEX3 <= "00000010";
               WHEN "0111" =>
                  HEX3 <= "01111000";
               WHEN "1000" =>
                  HEX3 <= "00000000";
               WHEN "1001" =>
                  HEX3 <= "00010000";
               WHEN OTHERS =>
            END CASE;
         ELSE
            CASE Q(11 DOWNTO 8) IS
               WHEN "0000" =>
                  HEX3 <= "11000000";
               WHEN "0001" =>
                  HEX3 <= "11111001";
               WHEN "0010" =>
                  HEX3 <= "10100100";
               WHEN "0011" =>
                  HEX3 <= "10110000";
               WHEN "0100" =>
                  HEX3 <= "10011001";
               WHEN "0101" =>
                  HEX3 <= "10010010";
               WHEN "0110" =>
                  HEX3 <= "10000010";
               WHEN "0111" =>
                  HEX3 <= "11111000";
               WHEN "1000" =>
                  HEX3 <= "10000000";
               WHEN "1001" =>
                  HEX3 <= "10010000";
               WHEN OTHERS =>
            END CASE;
         END IF;
      END IF;
   END PROCESS;
	END ARCHITECTURE_DISPLAY;
	