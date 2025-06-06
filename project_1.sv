// top level

module project_1 (
    input logic clock_50,
    output logic [6:0] hex0,
    output logic [6:0] hex1,
    output logic [6:0] hex2,
    output logic [6:0] hex3,
    output logic [6:0] hex4,
    output logic [6:0] hex5,
    input logic [3:0] key,
    
    // for audio codec
    output logic AUD_XCK,
    
    input logic AUD_ADCDAT,
    input logic AUD_ADCLRCK,
    input logic AUD_BCLK,
    output logic AUD_DACDAT,
    input logic AUD_DACLRCK,
    inout logic FPGA_I2C_SDAT,  // SDA connected to Audio chip
    output logic FPGA_I2C_SCLK  // SCLK connected to Audio chip
);

    // Declaring components
    system u_system (
        .clk_clk(clk_100m),
        .audio_pll_1_audio_clk_clk(AUD_XCK),
        .audio_codec_external_interface_ADCDAT(AUD_ADCDAT),
        .audio_codec_external_interface_ADCLRCK(AUD_ADCLRCK),
        .audio_codec_external_interface_BCLK(AUD_BCLK),
        .audio_codec_external_interface_DACDAT(AUD_DACDAT),
        .audio_codec_external_interface_DACLRCK(AUD_DACLRCK),
        .audio_config_external_interface_SDAT(FPGA_I2C_SDAT),
        .audio_config_external_interface_SCLK(FPGA_I2C_SCLK),
        .reset_reset_n(1'b1) // Reset signal (always high as placeholder)
    );

    pll_50_to_100m u_pll (
        .refclk(clock_50),
        .rst(1'b0),  // Reset is held low
        .outclk_0(clk_100m),
        .locked() // Unused output
    );

endmodule

// system module definition (example)
module system (
    input logic audio_codec_external_interface_ADCDAT,
    input logic audio_codec_external_interface_ADCLRCK,
    input logic audio_codec_external_interface_BCLK,
    output logic audio_codec_external_interface_DACDAT,
    input logic audio_codec_external_interface_DACLRCK,
    inout logic audio_config_external_interface_SDAT,
    output logic audio_config_external_interface_SCLK,
    output logic audio_pll_1_audio_clk_clk,
    input logic clk_clk,
    input logic reset_reset_n
);
    // Module internals and logic go here
endmodule

// pll_50_to_100m module definition (example)
module pll_50_to_100m (
    input logic refclk,
    input logic rst,
    output logic outclk_0,
    output logic locked
);
    // PLL internals and logic go here
endmodule
