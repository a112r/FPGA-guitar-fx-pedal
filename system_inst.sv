module system (
    input  logic audio_codec_external_interface_ADCDAT,     // ADCDAT
    input  logic audio_codec_external_interface_ADCLRCK,    // ADCLRCK
    input  logic audio_codec_external_interface_BCLK,       // BCLK
    output logic audio_codec_external_interface_DACDAT,     // DACDAT
    input  logic audio_codec_external_interface_DACLRCK,    // DACLRCK
    inout  logic audio_config_external_interface_SDAT,      // SDAT
    output logic audio_config_external_interface_SCLK,      // SCLK
    output logic audio_pll_1_audio_clk_clk,                 // clk
    input  logic clk_clk,                                   // clk
    input  logic reset_reset_n                               // reset_n
);

    // Module internals go here

endmodule

// Module instantiation
system u0 (
    .audio_codec_external_interface_ADCDAT(CONNECTED_TO_audio_codec_external_interface_ADCDAT),  // audio_codec_external_interface.ADCDAT
    .audio_codec_external_interface_ADCLRCK(CONNECTED_TO_audio_codec_external_interface_ADCLRCK), // audio_codec_external_interface.ADCLRCK
    .audio_codec_external_interface_BCLK(CONNECTED_TO_audio_codec_external_interface_BCLK),    // audio_codec_external_interface.BCLK
    .audio_codec_external_interface_DACDAT(CONNECTED_TO_audio_codec_external_interface_DACDAT),  // audio_codec_external_interface.DACDAT
    .audio_codec_external_interface_DACLRCK(CONNECTED_TO_audio_codec_external_interface_DACLRCK), // audio_codec_external_interface.DACLRCK
    .audio_config_external_interface_SDAT(CONNECTED_TO_audio_config_external_interface_SDAT),   // audio_config_external_interface.SDAT
    .audio_config_external_interface_SCLK(CONNECTED_TO_audio_config_external_interface_SCLK),   // audio_config_external_interface.SCLK
    .audio_pll_1_audio_clk_clk(CONNECTED_TO_audio_pll_1_audio_clk_clk),                         // audio_pll_1_audio_clk.clk
    .clk_clk(CONNECTED_TO_clk_clk),                                                             // clk.clk
    .reset_reset_n(CONNECTED_TO_reset_reset_n)                                                  // reset.reset_n
);
