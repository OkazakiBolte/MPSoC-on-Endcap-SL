LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY my_traffic_generator IS
    GENERIC (
        -- Users to add parameters here

        -- User parameters ends
        -- Do not modify the parameters beyond this line

        -- Base address of targeted slave
        C_M_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR := x"40000000";
        -- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
        C_M_AXI_BURST_LEN : INTEGER := 16;
        -- Thread ID Width
        C_M_AXI_ID_WIDTH : INTEGER := 1;
        -- Width of Address Bus
        C_M_AXI_ADDR_WIDTH : INTEGER := 32;
        -- Width of Data Bus
        C_M_AXI_DATA_WIDTH : INTEGER := 32;
        -- Width of User Write Address Bus
        C_M_AXI_AWUSER_WIDTH : INTEGER := 0;
        -- Width of User Read Address Bus
        C_M_AXI_ARUSER_WIDTH : INTEGER := 0;
        -- Width of User Write Data Bus
        C_M_AXI_WUSER_WIDTH : INTEGER := 0;
        -- Width of User Read Data Bus
        C_M_AXI_RUSER_WIDTH : INTEGER := 0;
        -- Width of User Response Bus
        C_M_AXI_BUSER_WIDTH : INTEGER := 0
    );
    PORT (
        -- Users to add ports here

        -- User ports ends
        -- Do not modify the ports beyond this line

        -- Initiate AXI transactions
        INIT_AXI_TXN : IN STD_LOGIC;
        -- Asserts when transaction is complete
        TXN_DONE : OUT STD_LOGIC;
        -- Asserts when ERROR is detected
        ERROR : OUT STD_LOGIC;
        -- Global Clock Signal.
        M_AXI_ACLK : IN STD_LOGIC;
        -- Global Reset Singal. This Signal is Active Low
        M_AXI_ARESETN : IN STD_LOGIC;
        -- Master Interface Write Address ID
        M_AXI_AWID : OUT STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH - 1 DOWNTO 0);
        -- Master Interface Write Address
        M_AXI_AWADDR : OUT STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH - 1 DOWNTO 0);
        -- Burst length. The burst length gives the exact number of transfers in a burst
        M_AXI_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- Burst size. This signal indicates the size of each transfer in the burst
        M_AXI_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- Burst type. The burst type and the size information,
        -- determine how the address for each transfer within the burst is calculated.
        M_AXI_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        M_AXI_AWLOCK : OUT STD_LOGIC;
        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        M_AXI_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        M_AXI_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- Quality of Service, QoS identifier sent for each write transaction.
        M_AXI_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- Optional User-defined signal in the write address channel.
        M_AXI_AWUSER : OUT STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH - 1 DOWNTO 0);
        -- Write address valid. This signal indicates that
        -- the channel is signaling valid write address and control information.
        M_AXI_AWVALID : OUT STD_LOGIC;
        -- Write address ready. This signal indicates that
        -- the slave is ready to accept an address and associated control signals
        M_AXI_AWREADY : IN STD_LOGIC;
        -- Master Interface Write Data.
        M_AXI_WDATA : OUT STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH - 1 DOWNTO 0);
        -- Write strobes. This signal indicates which byte
        -- lanes hold valid data. There is one write strobe
        -- bit for each eight bits of the write data bus.
        M_AXI_WSTRB : OUT STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8 - 1 DOWNTO 0);
        -- Write last. This signal indicates the last transfer in a write burst.
        M_AXI_WLAST : OUT STD_LOGIC;
        -- Optional User-defined signal in the write data channel.
        M_AXI_WUSER : OUT STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH - 1 DOWNTO 0);
        -- Write valid. This signal indicates that valid write
        -- data and strobes are available
        M_AXI_WVALID : OUT STD_LOGIC;
        -- Write ready. This signal indicates that the slave
        -- can accept the write data.
        M_AXI_WREADY : IN STD_LOGIC;
        -- Master Interface Write Response.
        M_AXI_BID : IN STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH - 1 DOWNTO 0);
        -- Write response. This signal indicates the status of the write transaction.
        M_AXI_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        -- Optional User-defined signal in the write response channel
        M_AXI_BUSER : IN STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH - 1 DOWNTO 0);
        -- Write response valid. This signal indicates that the
        -- channel is signaling a valid write response.
        M_AXI_BVALID : IN STD_LOGIC;
        -- Response ready. This signal indicates that the master
        -- can accept a write response.
        M_AXI_BREADY : OUT STD_LOGIC;
        -- Master Interface Read Address.
        M_AXI_ARID : OUT STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH - 1 DOWNTO 0);
        -- Read address. This signal indicates the initial
        -- address of a read burst transaction.
        M_AXI_ARADDR : OUT STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH - 1 DOWNTO 0);
        -- Burst length. The burst length gives the exact number of transfers in a burst
        M_AXI_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- Burst size. This signal indicates the size of each transfer in the burst
        M_AXI_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- Burst type. The burst type and the size information,
        -- determine how the address for each transfer within the burst is calculated.
        M_AXI_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        M_AXI_ARLOCK : OUT STD_LOGIC;
        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        M_AXI_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        M_AXI_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        -- Quality of Service, QoS identifier sent for each read transaction
        M_AXI_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- Optional User-defined signal in the read address channel.
        M_AXI_ARUSER : OUT STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH - 1 DOWNTO 0);
        -- Write address valid. This signal indicates that
        -- the channel is signaling valid read address and control information
        M_AXI_ARVALID : OUT STD_LOGIC;
        -- Read address ready. This signal indicates that
        -- the slave is ready to accept an address and associated control signals
        M_AXI_ARREADY : IN STD_LOGIC;
        -- Read ID tag. This signal is the identification tag
        -- for the read data group of signals generated by the slave.
        M_AXI_RID : IN STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH - 1 DOWNTO 0);
        -- Master Read Data
        M_AXI_RDATA : IN STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH - 1 DOWNTO 0);
        -- Read response. This signal indicates the status of the read transfer
        M_AXI_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        -- Read last. This signal indicates the last transfer in a read burst
        M_AXI_RLAST : IN STD_LOGIC;
        -- Optional User-defined signal in the read address channel.
        M_AXI_RUSER : IN STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH - 1 DOWNTO 0);
        -- Read valid. This signal indicates that the channel
        -- is signaling the required read data.
        M_AXI_RVALID : IN STD_LOGIC;
        -- Read ready. This signal indicates that the master can
        -- accept the read data and response information.
        M_AXI_RREADY : OUT STD_LOGIC
    );
END my_traffic_generator;

ARCHITECTURE implementation OF my_traffic_generator IS
    -- function called clogb2 that returns an integer which has the
    --value of the ceiling of the log base 2

    FUNCTION clogb2 (bit_depth : INTEGER) RETURN INTEGER IS
        VARIABLE depth             : INTEGER := bit_depth;
        VARIABLE count             : INTEGER := 1;
    BEGIN
        FOR clogb2 IN 1 TO bit_depth LOOP -- Works for up to 32 bit integers
            IF (bit_depth <= 2) THEN
                count := 1;
            ELSE
                IF (depth <= 1) THEN
                    count := count;
                ELSE
                    depth := depth / 2;
                    count := count + 1;
                END IF;
            END IF;
        END LOOP;
        RETURN(count);
    END;

    -- C_TRANSACTIONS_NUM is the width of the index counter for
    -- number of beats in a burst write or burst read transaction.
    CONSTANT C_TRANSACTIONS_NUM : INTEGER := 1000;-- clogb2(C_M_AXI_BURST_LEN - 1);
    -- Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
    -- Non-2^n lengths will eventually cause bursts across 4K address boundaries.
    CONSTANT C_MASTER_LENGTH : INTEGER := 12;
    -- total number of burst transfers is master length divided by burst length and burst size
    CONSTANT C_NO_BURSTS_REQ : INTEGER := (C_MASTER_LENGTH - clogb2((C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8) - 1));
    -- Example State machine to initialize counter, initialize write transactions,
    -- initialize read transactions and comparison of read data with the
    -- written data words.
    TYPE state IS (IDLE, -- This state initiates AXI4Lite transaction
        -- after the state machine changes state to INIT_WRITE
        -- when there is 0 to 1 transition on INIT_AXI_TXN
        INIT_WRITE, -- This state initializes write transaction,
        -- once writes are done, the state machine
        -- changes state to INIT_READ
        INIT_READ, -- This state initializes read transaction
        -- once reads are done, the state machine
        -- changes state to INIT_COMPARE
        INIT_COMPARE);-- This state issues the status of comparison
    -- of the written data with the read data

    SIGNAL mst_exec_state : state;

    -- AXI4FULL signals
    --AXI4 internal temp signals
    SIGNAL axi_awaddr  : STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_awvalid : STD_LOGIC;
    SIGNAL axi_wdata   : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_wlast   : STD_LOGIC;
    SIGNAL axi_wvalid  : STD_LOGIC;
    SIGNAL axi_bready  : STD_LOGIC;
    SIGNAL axi_araddr  : STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_arvalid : STD_LOGIC;
    SIGNAL axi_rready  : STD_LOGIC;
    --write beat count in a burst
    SIGNAL write_index : STD_LOGIC_VECTOR(C_TRANSACTIONS_NUM DOWNTO 0);
    --read beat count in a burst
    SIGNAL read_index : STD_LOGIC_VECTOR(C_TRANSACTIONS_NUM DOWNTO 0);
    --size of C_M_AXI_BURST_LEN length burst in bytes
    SIGNAL burst_size_bytes : STD_LOGIC_VECTOR(C_TRANSACTIONS_NUM + 2 DOWNTO 0);
    --The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
    SIGNAL write_burst_counter      : STD_LOGIC_VECTOR(C_NO_BURSTS_REQ DOWNTO 0);
    SIGNAL read_burst_counter       : STD_LOGIC_VECTOR(C_NO_BURSTS_REQ DOWNTO 0);
    SIGNAL start_single_burst_write : STD_LOGIC;
    SIGNAL start_single_burst_read  : STD_LOGIC;
    SIGNAL writes_done              : STD_LOGIC;
    SIGNAL reads_done               : STD_LOGIC;
    SIGNAL error_reg                : STD_LOGIC;
    SIGNAL compare_done             : STD_LOGIC;
    SIGNAL read_mismatch            : STD_LOGIC;
    SIGNAL burst_write_active       : STD_LOGIC;
    SIGNAL burst_read_active        : STD_LOGIC;
    SIGNAL expected_rdata           : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH - 1 DOWNTO 0);
    --Interface response error flags
    SIGNAL write_resp_error : STD_LOGIC;
    SIGNAL read_resp_error  : STD_LOGIC;
    SIGNAL wnext            : STD_LOGIC;
    SIGNAL rnext            : STD_LOGIC;
    SIGNAL init_txn_ff      : STD_LOGIC;
    SIGNAL init_txn_ff2     : STD_LOGIC;
    SIGNAL init_txn_edge    : STD_LOGIC;
    SIGNAL init_txn_pulse   : STD_LOGIC;
BEGIN
    -- I/O Connections assignments

    --I/O Connections. Write Address (AW)
    M_AXI_AWID <= (OTHERS => '0');
    --The AXI address is a concatenation of the target base address + active offset range
    M_AXI_AWADDR <= STD_LOGIC_VECTOR(unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_awaddr));
    --Burst LENgth is number of transaction beats, minus 1
    M_AXI_AWLEN <= STD_LOGIC_VECTOR(to_unsigned(C_M_AXI_BURST_LEN - 1, 8));
    --Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
    M_AXI_AWSIZE <= STD_LOGIC_VECTOR(to_unsigned(clogb2((C_M_AXI_DATA_WIDTH/8) - 1), 3));
    --INCR burst type is usually used, except for keyhole bursts
    M_AXI_AWBURST <= "01";
    M_AXI_AWLOCK  <= '0';
    --Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
    M_AXI_AWCACHE <= "0010";
    M_AXI_AWPROT  <= "000";
    M_AXI_AWQOS   <= x"0";
    M_AXI_AWUSER  <= (OTHERS => '1');
    M_AXI_AWVALID <= axi_awvalid;
    --Write Data(W)
    M_AXI_WDATA <= axi_wdata;
    --All bursts are complete and aligned in this example
    M_AXI_WSTRB  <= (OTHERS => '1');
    M_AXI_WLAST  <= axi_wlast;
    M_AXI_WUSER  <= (OTHERS => '0');
    M_AXI_WVALID <= axi_wvalid;
    --Write Response (B)
    M_AXI_BREADY <= axi_bready;
    --Read Address (AR)
    M_AXI_ARID   <= (OTHERS => '0');
    M_AXI_ARADDR <= STD_LOGIC_VECTOR(unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_araddr));
    --Burst LENgth is number of transaction beats, minus 1
    M_AXI_ARLEN <= STD_LOGIC_VECTOR(to_unsigned(C_M_AXI_BURST_LEN - 1, 8));
    --Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
    M_AXI_ARSIZE <= STD_LOGIC_VECTOR(to_unsigned(clogb2((C_M_AXI_DATA_WIDTH/8) - 1), 3));
    --INCR burst type is usually used, except for keyhole bursts
    M_AXI_ARBURST <= "01";
    M_AXI_ARLOCK  <= '0';
    --Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
    M_AXI_ARCACHE <= "0010";
    M_AXI_ARPROT  <= "000";
    M_AXI_ARQOS   <= x"0";
    M_AXI_ARUSER  <= (OTHERS => '1');
    M_AXI_ARVALID <= axi_arvalid;
    --Read and Read Response (R)
    M_AXI_RREADY <= axi_rready;
    --Example design I/O
    TXN_DONE <= compare_done;
    --Burst size in bytes
    burst_size_bytes <= STD_LOGIC_VECTOR(to_unsigned((C_M_AXI_BURST_LEN * (C_M_AXI_DATA_WIDTH/8)), C_TRANSACTIONS_NUM + 3));
    init_txn_pulse   <= (NOT init_txn_ff2) AND init_txn_ff;
    --Generate a pulse to initiate AXI transaction.
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            -- Initiates AXI transaction delay
            IF (M_AXI_ARESETN = '0') THEN
                init_txn_ff  <= '0';
                init_txn_ff2 <= '0';
            ELSE
                init_txn_ff  <= INIT_AXI_TXN;
                init_txn_ff2 <= init_txn_ff;
            END IF;
        END IF;
    END PROCESS;
    ----------------------
    --Write Address Channel
    ----------------------

    -- The purpose of the write address channel is to request the address and
    -- command information for the entire transaction.  It is a single beat
    -- of information.

    -- The AXI4 Write address channel in this example will continue to initiate
    -- write commands as fast as it is allowed by the slave/interconnect.
    -- The address will be incremented on each accepted address transaction,
    -- by burst_size_byte to point to the next address.

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_awvalid <= '0';
            ELSE
                -- If previously not valid , start next transaction
                IF (axi_awvalid = '0' AND start_single_burst_write = '1') THEN
                    axi_awvalid <= '1';
                    -- Once asserted, VALIDs cannot be deasserted, so axi_awvalid
                    -- must wait until transaction is accepted
                ELSIF (M_AXI_AWREADY = '1' AND axi_awvalid = '1') THEN
                    axi_awvalid <= '0';
                ELSE
                    axi_awvalid <= axi_awvalid;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Next address after AWREADY indicates previous address acceptance
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_awaddr <= (OTHERS => '0');
            ELSE
                IF (M_AXI_AWREADY = '1' AND axi_awvalid = '1') THEN
                    axi_awaddr <= STD_LOGIC_VECTOR(unsigned(axi_awaddr) + unsigned(burst_size_bytes));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    ----------------------
    --Write Data Channel
    ----------------------

    --The write data will continually try to push write data across the interface.

    --The amount of data accepted will depend on the AXI slave and the AXI
    --Interconnect settings, such as if there are FIFOs enabled in interconnect.

    --Note that there is no explicit timing relationship to the write address channel.
    --The write channel has its own throttling flag, separate from the AW channel.

    --Synchronization between the channels must be determined by the user.

    --The simpliest but lowest performance would be to only issue one address write
    --and write data burst at a time.

    --In this example they are kept in sync by using the same address increment
    --and burst sizes. Then the AW and W channels have their transactions measured
    --with threshold counters as part of the user logic, to make sure neither
    --channel gets too far ahead of each other.

    --Forward movement occurs when the write channel is valid and ready

    wnext <= M_AXI_WREADY AND axi_wvalid;

    -- WVALID logic, similar to the axi_awvalid always block above
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_wvalid <= '0';
            ELSE
                IF (axi_wvalid = '0' AND start_single_burst_write = '1') THEN
                    -- If previously not valid, start next transaction
                    axi_wvalid <= '1';
                    --     /* If WREADY and too many writes, throttle WVALID
                    --      Once asserted, VALIDs cannot be deasserted, so WVALID
                    --      must wait until burst is complete with WLAST */
                ELSIF (wnext = '1' AND axi_wlast = '1') THEN
                    axi_wvalid <= '0';
                ELSE
                    axi_wvalid <= axi_wvalid;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    --WLAST generation on the MSB of a counter underflow
    -- WVALID logic, similar to the axi_awvalid always block above
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_wlast <= '0';
                -- axi_wlast is asserted when the write index
                -- count reaches the penultimate count to synchronize
                -- with the last write data when write_index is b1111
                -- elsif (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)
            ELSE
                IF ((((write_index = STD_LOGIC_VECTOR(to_unsigned(C_M_AXI_BURST_LEN - 2, C_TRANSACTIONS_NUM + 1))) AND C_M_AXI_BURST_LEN >= 2) AND wnext = '1') OR (C_M_AXI_BURST_LEN = 1)) THEN
                    axi_wlast <= '1';
                    -- Deassrt axi_wlast when the last write data has been
                    -- accepted by the slave with a valid response
                ELSIF (wnext = '1') THEN
                    axi_wlast <= '0';
                ELSIF (axi_wlast = '1' AND C_M_AXI_BURST_LEN = 1) THEN
                    axi_wlast <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Burst length counter. Uses extra counter register bit to indicate terminal
    -- count to reduce decode logic */
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR start_single_burst_write = '1' OR init_txn_pulse = '1') THEN
                write_index <= (OTHERS => '0');
            ELSE
                IF (wnext = '1' AND (write_index /= STD_LOGIC_VECTOR(to_unsigned(C_M_AXI_BURST_LEN - 1, C_TRANSACTIONS_NUM + 1)))) THEN
                    write_index <= STD_LOGIC_VECTOR(unsigned(write_index) + 1);
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Write Data Generator
    -- Data pattern is only a simple incrementing count from 0 for each burst  */
    PROCESS (M_AXI_ACLK)
        VARIABLE sig_one : INTEGER := 1;
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_wdata <= STD_LOGIC_VECTOR (to_unsigned(sig_one, C_M_AXI_DATA_WIDTH));
                --elsif (wnext && axi_wlast)
                --  axi_wdata <= 'b0;
            ELSE
                IF (wnext = '1') THEN
                    axi_wdata <= STD_LOGIC_VECTOR(unsigned(axi_wdata) + 1);
                END IF;
            END IF;
        END IF;
    END PROCESS;
    ------------------------------
    --Write Response (B) Channel
    ------------------------------

    --The write response channel provides feedback that the write has committed
    --to memory. BREADY will occur when all of the data and the write address
    --has arrived and been accepted by the slave.

    --The write issuance (number of outstanding write addresses) is started by
    --the Address Write transfer, and is completed by a BREADY/BRESP.

    --While negating BREADY will eventually throttle the AWREADY signal,
    --it is best not to throttle the whole data channel this way.

    --The BRESP bit [1] is used indicate any errors from the interconnect or
    --slave for the entire write burst. This example will capture the error
    --into the ERROR output.

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_bready <= '0';
                -- accept/acknowledge bresp with axi_bready by the master
                -- when M_AXI_BVALID is asserted by slave
            ELSE
                IF (M_AXI_BVALID = '1' AND axi_bready = '0') THEN
                    axi_bready <= '1';
                    -- deassert after one clock cycle
                ELSIF (axi_bready = '1') THEN
                    axi_bready <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
    --Flag any write response errors
    write_resp_error <= axi_bready AND M_AXI_BVALID AND M_AXI_BRESP(1);
    ------------------------------
    --Read Address Channel
    ------------------------------

    --The Read Address Channel (AW) provides a similar function to the
    --Write Address channel- to provide the tranfer qualifiers for the burst.

    --In this example, the read address increments in the same
    --manner as the write address channel.

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_arvalid <= '0';
                -- If previously not valid , start next transaction
            ELSE
                IF (axi_arvalid = '0' AND start_single_burst_read = '1') THEN
                    axi_arvalid <= '1';
                ELSIF (M_AXI_ARREADY = '1' AND axi_arvalid = '1') THEN
                    axi_arvalid <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Next address after ARREADY indicates previous address acceptance
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_araddr <= (OTHERS => '0');
            ELSE
                IF (M_AXI_ARREADY = '1' AND axi_arvalid = '1') THEN
                    axi_araddr <= STD_LOGIC_VECTOR(unsigned(axi_araddr) + unsigned(burst_size_bytes));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    ----------------------------------
    --Read Data (and Response) Channel
    ----------------------------------

    -- Forward movement occurs when the channel is valid and ready
    rnext <= M_AXI_RVALID AND axi_rready;
    -- Burst length counter. Uses extra counter register bit to indicate
    -- terminal count to reduce decode logic
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR start_single_burst_read = '1' OR init_txn_pulse = '1') THEN
                read_index <= (OTHERS => '0');
            ELSE
                IF (rnext = '1' AND (read_index <= STD_LOGIC_VECTOR(to_unsigned(C_M_AXI_BURST_LEN - 1, C_TRANSACTIONS_NUM + 1)))) THEN
                    read_index                      <= STD_LOGIC_VECTOR(unsigned(read_index) + 1);
                END IF;
            END IF;
        END IF;
    END PROCESS;

    --/*
    -- The Read Data channel returns the results of the read request
    --
    -- In this example the data checker is always able to accept
    -- more data, so no need to throttle the RREADY signal
    -- */
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                axi_rready <= '0';
                -- accept/acknowledge rdata/rresp with axi_rready by the master
                -- when M_AXI_RVALID is asserted by slave
            ELSE
                IF (M_AXI_RVALID = '1') THEN
                    IF (M_AXI_RLAST = '1' AND axi_rready = '1') THEN
                        axi_rready <= '0';
                    ELSE
                        axi_rready <= '1';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    --Check received read data against data generator
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                read_mismatch <= '0';
                --Only check data when RVALID is active
            ELSE
                IF (rnext = '1' AND (M_AXI_RDATA /= expected_rdata)) THEN
                    read_mismatch <= '1';
                ELSE
                    read_mismatch <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    --Flag any read response errors
    read_resp_error <= axi_rready AND M_AXI_RVALID AND M_AXI_RRESP(1);
    ------------------------------------------
    --Example design read check data generator
    -------------------------------------------

    --Generate expected read data to check against actual read data

    PROCESS (M_AXI_ACLK)
        VARIABLE sig_one : INTEGER := 1;
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                expected_rdata <= STD_LOGIC_VECTOR (to_unsigned(sig_one, C_M_AXI_DATA_WIDTH));
            ELSE
                IF (M_AXI_RVALID = '1' AND axi_rready = '1') THEN
                    expected_rdata <= STD_LOGIC_VECTOR(unsigned(expected_rdata) + 1);
                END IF;
            END IF;
        END IF;
    END PROCESS;
    ------------------------------------
    --Example design error register
    ------------------------------------

    --Register and hold any data mismatches, or read/write interface errors

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                error_reg <= '0';
            ELSE
                IF (read_mismatch = '1' OR write_resp_error = '1' OR read_resp_error = '1') THEN
                    error_reg <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;
    ----------------------------------
    --Example design throttling
    ----------------------------------

    -- For maximum port throughput, this user example code will try to allow
    -- each channel to run as independently and as quickly as possible.

    -- However, there are times when the flow of data needs to be throtted by
    -- the user application. This example application requires that data is
    -- not read before it is written and that the write channels do not
    -- advance beyond an arbitrary threshold (say to prevent an
    -- overrun of the current read address by the write address).

    -- From AXI4 Specification, 13.13.1: "If a master requires ordering between
    -- read and write transactions, it must ensure that a response is received
    -- for the previous transaction before issuing the next transaction."

    -- This example accomplishes this user application throttling through:
    -- -Reads wait for writes to fully complete
    -- -Address writes wait when not read + issued transaction counts pass
    -- a parameterized threshold
    -- -Writes wait when a not read + active data burst count pass
    -- a parameterized threshold

    -- write_burst_counter counter keeps track with the number of burst transaction initiated
    -- against the number of burst transactions the master needs to initiate
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                write_burst_counter <= (OTHERS => '0');
            ELSE
                IF (M_AXI_AWREADY = '1' AND axi_awvalid = '1') THEN
                    IF (write_burst_counter(C_NO_BURSTS_REQ) = '0') THEN
                        write_burst_counter <= STD_LOGIC_VECTOR(unsigned(write_burst_counter) + 1);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- read_burst_counter counter keeps track with the number of burst transaction initiated
    -- against the number of burst transactions the master needs to initiate
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                read_burst_counter <= (OTHERS => '0');
            ELSE
                IF (M_AXI_ARREADY = '1' AND axi_arvalid = '1') THEN
                    IF (read_burst_counter(C_NO_BURSTS_REQ) = '0') THEN
                        read_burst_counter <= STD_LOGIC_VECTOR(unsigned(read_burst_counter) + 1);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    MASTER_EXECUTION_PROC : PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0') THEN
                -- reset condition
                -- All the signals are ed default values under reset condition
                mst_exec_state           <= IDLE;
                compare_done             <= '0';
                start_single_burst_write <= '0';
                start_single_burst_read  <= '0';
                ERROR                    <= '0';
            ELSE
                -- state transition
                CASE (mst_exec_state) IS

                    WHEN IDLE =>
                        -- This state is responsible to initiate
                        -- AXI transaction when init_txn_pulse is asserted
                        IF (init_txn_pulse = '1') THEN
                            mst_exec_state <= INIT_WRITE;
                            ERROR          <= '0';
                            compare_done   <= '0';
                        ELSE
                            mst_exec_state <= IDLE;
                        END IF;

                    WHEN INIT_WRITE =>
                        -- This state is responsible to issue start_single_write pulse to
                        -- initiate a write transaction. Write transactions will be
                        -- issued until burst_write_active signal is asserted.
                        -- write controller

                        IF (writes_done = '1') THEN
                            mst_exec_state <= IDLE; -- INIT_READ;
                        ELSE
                            mst_exec_state <= INIT_WRITE;

                            IF (axi_awvalid = '0' AND start_single_burst_write = '0' AND burst_write_active = '0') THEN
                                start_single_burst_write <= '1';
                            ELSE
                                start_single_burst_write <= '0'; --Negate to generate a pulse
                            END IF;
                        END IF;

                    WHEN INIT_READ =>
                        -- This state is responsible to issue start_single_read pulse to
                        -- initiate a read transaction. Read transactions will be
                        -- issued until burst_read_active signal is asserted.
                        -- read controller
                        IF (reads_done = '1') THEN
                            mst_exec_state <= INIT_COMPARE;
                        ELSE
                            mst_exec_state <= INIT_READ;

                            IF (axi_arvalid = '0' AND burst_read_active = '0' AND start_single_burst_read = '0') THEN
                                start_single_burst_read <= '1';
                            ELSE
                                start_single_burst_read <= '0'; --Negate to generate a pulse
                            END IF;
                        END IF;

                    WHEN INIT_COMPARE =>
                        -- This state is responsible to issue the state of comparison
                        -- of written data with the read data. If no error flags are set,
                        -- compare_done signal will be asseted to indicate success.
                        ERROR          <= error_reg;
                        mst_exec_state <= IDLE;
                        compare_done   <= '1';

                    WHEN OTHERS =>
                        mst_exec_state <= IDLE;
                END CASE;
            END IF;
        END IF;
    END PROCESS;
    -- burst_write_active signal is asserted when there is a burst write transaction
    -- is initiated by the assertion of start_single_burst_write. burst_write_active
    -- signal remains asserted until the burst write is accepted by the slave
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                burst_write_active <= '0';

                --The burst_write_active is asserted when a write burst transaction is initiated
            ELSE
                IF (start_single_burst_write = '1') THEN
                    burst_write_active <= '1';
                ELSIF (M_AXI_BVALID = '1' AND axi_bready = '1') THEN
                    burst_write_active <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Check for last write completion.

    -- This logic is to qualify the last write count with the final write
    -- response. This demonstrates how to confirm that a write has been
    -- committed.

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                writes_done <= '0';
                --The reads_done should be associated with a rready response
                --elsif (M_AXI_RVALID && axi_rready && (read_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_rlast)
            ELSE
                IF (M_AXI_BVALID = '1' AND (write_burst_counter(C_NO_BURSTS_REQ) = '1') AND axi_bready = '1') THEN
                    writes_done <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- burst_read_active signal is asserted when there is a burst write transaction
    -- is initiated by the assertion of start_single_burst_write. start_single_burst_read
    -- signal remains asserted until the burst read is accepted by the master
    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                burst_read_active <= '0';

                --The burst_write_active is asserted when a write burst transaction is initiated
            ELSE
                IF (start_single_burst_read = '1') THEN
                    burst_read_active <= '1';
                ELSIF (M_AXI_RVALID = '1' AND axi_rready = '1' AND M_AXI_RLAST = '1') THEN
                    burst_read_active <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Check for last read completion.

    -- This logic is to qualify the last read count with the final read
    -- response. This demonstrates how to confirm that a read has been
    -- committed.

    PROCESS (M_AXI_ACLK)
    BEGIN
        IF (rising_edge (M_AXI_ACLK)) THEN
            IF (M_AXI_ARESETN = '0' OR init_txn_pulse = '1') THEN
                reads_done <= '0';
                --The reads_done should be associated with a rready response
                --elsif (M_AXI_RVALID && axi_rready && (read_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_rlast)
            ELSE
                IF (M_AXI_RVALID = '1' AND axi_rready = '1' AND (read_index = STD_LOGIC_VECTOR (to_unsigned(C_M_AXI_BURST_LEN - 1, C_TRANSACTIONS_NUM + 1))) AND (read_burst_counter(C_NO_BURSTS_REQ) = '1')) THEN
                    reads_done <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Add user logic here

    -- User logic ends

END implementation;