LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- read write
ENTITY rw_reg IS
    GENERIC (
        REG_ADDR_WIDTH : INTEGER RANGE 1 TO 32  := 32;
        REG_DATA_WIDTH : INTEGER RANGE 1 TO 32  := 32;
        ADDRESS        : INTEGER RANGE 0 TO 512 := 0
    );
    PORT (
        clock  : IN STD_LOGIC;
        resetn : IN STD_LOGIC;
        dout   : OUT STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0);
        din    : IN STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0);
        strb   : IN STD_LOGIC
    );
END rw_reg;

ARCHITECTURE rtl OF rw_reg IS
    SIGNAL reg : STD_LOGIC_VECTOR(REG_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
    update_reg : PROCESS (clock) BEGIN
        IF rising_edge(clock) THEN
            IF resetn = '0' THEN
                reg <= (OTHERS => '0');
            ELSIF strb = '1' THEN
                reg <= din;
            END IF;
        END IF;
    END PROCESS update_reg;

    dout <= reg;
END rtl;