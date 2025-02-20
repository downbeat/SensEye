library verilog;
use verilog.vl_types.all;
entity F2DSS_ACE_MISC_RDMUX is
    port(
        ADC0_CALIBRATE  : in     vl_logic;
        ADC1_CALIBRATE  : in     vl_logic;
        ADC2_CALIBRATE  : in     vl_logic;
        ADC0_SAMPLE     : in     vl_logic;
        ADC1_SAMPLE     : in     vl_logic;
        ADC2_SAMPLE     : in     vl_logic;
        ADC0_BUSY       : in     vl_logic;
        ADC1_BUSY       : in     vl_logic;
        ADC2_BUSY       : in     vl_logic;
        ADC0_DATAVALID  : in     vl_logic;
        ADC1_DATAVALID  : in     vl_logic;
        ADC2_DATAVALID  : in     vl_logic;
        ADC0_RESULT     : in     vl_logic_vector(11 downto 0);
        ADC1_RESULT     : in     vl_logic_vector(11 downto 0);
        ADC2_RESULT     : in     vl_logic_vector(11 downto 0);
        COMPARATOR      : in     vl_logic_vector(11 downto 0);
        SSE_IRQ_EN      : in     vl_logic_vector(20 downto 0);
        SSE_IRQ         : in     vl_logic_vector(20 downto 0);
        COMP_IRQ_EN     : in     vl_logic_vector(23 downto 0);
        COMP_IRQ        : in     vl_logic_vector(23 downto 0);
        PPE_FIFO_IRQ    : in     vl_logic_vector(8 downto 0);
        PPE_FIFO_IRQ_EN : in     vl_logic_vector(8 downto 0);
        PPE_FLAGS0_IRQ  : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS0_IRQ_EN: in     vl_logic_vector(31 downto 0);
        PPE_FLAGS1_IRQ  : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS1_IRQ_EN: in     vl_logic_vector(31 downto 0);
        PPE_FLAGS2_IRQ  : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS2_IRQ_EN: in     vl_logic_vector(31 downto 0);
        PPE_FLAGS3_IRQ  : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS3_IRQ_EN: in     vl_logic_vector(31 downto 0);
        PPE_SFFLAGS_IRQ : in     vl_logic_vector(31 downto 0);
        PPE_SFFLAGS_IRQ_EN: in     vl_logic_vector(31 downto 0);
        FPGA_FLAGS_SEL  : in     vl_logic_vector(9 downto 0);
        PPE_PDMA_CTRL   : in     vl_logic_vector(31 downto 0);
        PDMA_STATUS     : in     vl_logic_vector(31 downto 0);
        PPE_PDMA_DATAOUT: in     vl_logic_vector(31 downto 0);
        PADDR           : in     vl_logic_vector(12 downto 0);
        PRDATA_MISC     : out    vl_logic_vector(31 downto 0)
    );
end F2DSS_ACE_MISC_RDMUX;
