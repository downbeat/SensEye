`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1


module MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC(
       CLKA,
       CLKA_PAD,
       CLKA_PADP,
       CLKA_PADN,
       CLKB,
       CLKB_PAD,
       CLKB_PADP,
       CLKB_PADN,
       CLKC,
       CLKC_PAD,
       CLKC_PADP,
       CLKC_PADN,
       MAINXIN,
       LPXIN,
       MAC_CLK,
       GLA0,
       GLA,
       FAB_CLK,
       FAB_LOCK,
       MSS_LOCK,
       GLB,
       YB,
       GLC,
       YC,
       MAC_CLK_CCC,
       MAC_CLK_IO,
       RCOSC_CLKOUT,
       MAINXIN_CLKOUT,
       LPXIN_CLKOUT
    );
input  CLKA;
input  CLKA_PAD;
input  CLKA_PADP;
input  CLKA_PADN;
input  CLKB;
input  CLKB_PAD;
input  CLKB_PADP;
input  CLKB_PADN;
input  CLKC;
input  CLKC_PAD;
input  CLKC_PADP;
input  CLKC_PADN;
input  MAINXIN;
input  LPXIN;
input  MAC_CLK;
output GLA0;
output GLA;
output FAB_CLK;
output FAB_LOCK;
output MSS_LOCK;
output GLB;
output YB;
output GLC;
output YC;
output MAC_CLK_CCC;
output MAC_CLK_IO;
output RCOSC_CLKOUT;
output MAINXIN_CLKOUT;
output LPXIN_CLKOUT;

    wire N_CLKA_XTLOSC, N_GND, N_PLLINT_CLKC_Y, N_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GLA = N_GND;
    assign GLB = N_GND;
    assign YB = N_GND;
    assign YC = N_GND;
    assign MAC_CLK_IO = N_GND;
    assign N_GND = GND_power_net1;
    assign N_VCC = VCC_power_net1;
    
    MSS_CCC #( .VCOFREQUENCY(80.000) )  I_MSSCCC (.CLKA(N_CLKA_XTLOSC), 
        .EXTFB(N_GND), .GLA(), .GLAMSS(GLA0), .LOCK(FAB_LOCK), 
        .LOCKMSS(MSS_LOCK), .CLKB(N_GND), .GLB(FAB_CLK), .YB(), .CLKC(
        N_PLLINT_CLKC_Y), .GLC(GLC), .YC(), .MACCLK(MAC_CLK_CCC), 
        .OADIV({N_GND, N_GND, N_GND, N_GND, N_GND}), .OADIVHALF(N_GND), 
        .OAMUX({N_VCC, N_GND, N_GND}), .BYPASSA(N_GND), .DLYGLA({N_GND, 
        N_GND, N_GND, N_GND, N_GND}), .DLYGLAMSS({N_GND, N_GND, N_GND, 
        N_GND, N_GND}), .DLYGLAFAB({N_GND, N_GND, N_GND, N_GND, N_GND})
        , .OBDIV({N_GND, N_GND, N_GND, N_GND, N_VCC}), .OBDIVHALF(
        N_GND), .OBMUX({N_GND, N_VCC, N_VCC}), .BYPASSB(N_GND), 
        .DLYGLB({N_GND, N_GND, N_GND, N_GND, N_GND}), .OCDIV({N_GND, 
        N_GND, N_GND, N_GND, N_GND}), .OCDIVHALF(N_GND), .OCMUX({N_GND, 
        N_GND, N_GND}), .BYPASSC(N_VCC), .DLYGLC({N_GND, N_GND, N_GND, 
        N_GND, N_GND}), .FINDIV({N_GND, N_GND, N_GND, N_GND, N_GND, 
        N_VCC, N_VCC}), .FBDIV({N_GND, N_GND, N_GND, N_VCC, N_VCC, 
        N_VCC, N_VCC}), .FBDLY({N_GND, N_GND, N_GND, N_GND, N_VCC}), 
        .FBSEL({N_GND, N_VCC}), .XDLYSEL(N_GND), .GLMUXSEL({N_GND, 
        N_GND}), .GLMUXCFG({N_GND, N_GND}));
    PLLINT I_CLKC_PLLINT (.A(CLKC), .Y(N_PLLINT_CLKC_Y));
    MSS_XTLOSC I_XTLOSC (.XTL(MAINXIN), .CLKOUT(N_CLKA_XTLOSC));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
