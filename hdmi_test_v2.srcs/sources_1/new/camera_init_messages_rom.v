`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2022 20:16:18
// Design Name: 
// Module Name: camera_init_messages_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module camera_init_messages_rom(
    input wire [15:0]    message_addr_i,
    output reg [23:0]   message_data_o,
    
    input wire          clk
);
    //reg [15:0] rom [78:0];
    reg [23:0] rom [80:0];
    
    always @(posedge clk) begin
        message_data_o <= rom[message_addr_i];
    end
    
    // rom init
    initial begin //collection of all adddresses and values to be written in the camera
        rom[  0] = 24'h4740_20;                     // POLARITY CTRL00 PCLK - Active High, HREF - Active Low, VSYNC - Active Low
        rom[  1] = 24'h4050_6e;                     // Not found -- Fix by delete
        rom[  2] = 24'h4051_8f;                     // Not found -- Fix by delete
        
        rom[  3] = 24'h3008_42;                     // Exit reset state
        rom[  4] = 24'h3103_03;                     // SCCB SYSTEM CTRL1 - SYS CLK From PLL -- Fix to 0x2
        rom[  5] = 24'h3017_7f;                     // D[9:0] I/O control - set to output
        rom[  6] = 24'h3018_ff;                     // D[9:0] I/O control - set to output
        rom[  7] = 24'h302c_02;                     // PAD CONTROL 00 - FREX enable, Output drive capability 1x
        rom[  8] = 24'h3108_01;                     // SYSTEM ROOT DIVIDER - SCLK = pll_clki/2, SCLK2x = pll_clki, PCLK = pll_clki
        rom[  9] = 24'h3630_2e;                     // Not found -- Fix by delete
        rom[ 10] = 24'h3632_e2;                     // Not found -- Fix by delete
        rom[ 11] = 24'h3633_23;                     // Not found -- Fix by delete
        rom[ 12] = 24'h3621_e0;                     // Not found -- Fix by delete
        rom[ 13] = 24'h3704_a0;                     // Not found -- Fix by delete
        rom[ 14] = 24'h3703_5a;                     // Not found -- Fix by delete
        rom[ 15] = 24'h3715_78;                     // Not found -- Fix by delete
        rom[ 16] = 24'h3717_01;                     // Not found -- Fix by delete
        rom[ 17] = 24'h370b_60;                     // Not found -- Fix by delete
        rom[ 18] = 24'h3705_1a;                     // Not found -- Fix by delete
        rom[ 19] = 24'h3905_02;                     // Not found -- Fix by delete
        rom[ 20] = 24'h3906_10;                     // Not found -- Fix by delete
        rom[ 21] = 24'h3901_0a;                     // Not found -- Fix by delete
        rom[ 22] = 24'h3731_12;                     // Not found -- Fix by delete
        rom[ 23] = 24'h3600_08;                     // DEBUG MODE
        rom[ 24] = 24'h3601_33;                     // DEBUG MODE
        rom[ 25] = 24'h302d_60;                     // SYSTEM CONTROL
        rom[ 26] = 24'h3620_52;                     // Not found -- Fix by delete
        rom[ 27] = 24'h371b_20;                     // Not found -- Fix by delete
        rom[ 28] = 24'h471c_50;                     // Not found -- Fix by delete
        
        rom[ 29] = 24'h3a18_00;                     // AEC GAIN CEILING (MSB)
        rom[ 30] = 24'h3a19_f8;                     // AEC GAIN CEILING (LSB)
        
        rom[ 31] = 24'h3635_1c;                     // Not found -- Fix by delete
        rom[ 32] = 24'h3634_40;                     // Not found -- Fix by delete
        rom[ 33] = 24'h3622_01;                     // Not found -- Fix by delete
        
        rom[ 34] = 24'h3c04_28;                     // 5060HZ CTRL04 - Threshold for low sum
        rom[ 35] = 24'h3c05_98;                     // 5060HZ CTRL05 - Threshold for high sum
        rom[ 36] = 24'h3c06_00;                     // LIGHT METER1 THRESHOLD - Lightmeter1 threshold[15:8]
        rom[ 37] = 24'h3c07_08;                     // LIGHT METER1 THRESHOLD - Lightmeter1 threshold[7:0]
        rom[ 38] = 24'h3c08_00;                     // LIGHT METER2 THRESHOLD - Lightmeter2 threshold[15:8]
        rom[ 39] = 24'h3c09_1c;                     // LIGHT METER2 THRESHOLD - Lightmeter2 threshold[7:0]
        rom[ 40] = 24'h3c0a_9c;                     // SAMPLE NUMBER - Sample number[15:8]
        rom[ 41] = 24'h3c0b_40;                     // SAMPLE NUMBER - Sample number[7:0]
        
        rom[ 42] = 24'h3820_41;                     // TIMING TC REG20 - ISP vflip False, Sensor vflip True
        rom[ 43] = 24'h3821_01;                     // TIMING TC REG21 - ISP mirror False, Sensor mirror True
        
        //windows setup
        rom[ 44] = 24'h3800_00;                     // TIMING HS - X address start high byte[11:8] high byte
        rom[ 45] = 24'h3801_00;                     // TIMING HS - X address start low byte[7:0] low byte
        rom[ 46] = 24'h3802_00;                     // TIMING VS - Y address start high byte[10:8] high byte
        rom[ 47] = 24'h3803_04;                     // TIMING VS - Y address start low byte[7:0] low byte
        rom[ 48] = 24'h3804_0a;                     // TIMING HW - X address end high byte[11:8] high byte
        rom[ 49] = 24'h3805_3f;                     // TIMING HW - X address end low byte[7:0] low byte
        rom[ 50] = 24'h3806_07;                     // TIMING VH - Y address end high byte[10:8] high byte
        rom[ 51] = 24'h3807_9b;                     // TIMING VH - Y address end low byte[7:0] low byte
        rom[ 52] = 24'h3808_05;                     // TIMING DVPHO - DVP output horizontal width[11:8] high byte
        rom[ 53] = 24'h3809_00;                     // TIMING DVPHO - DVP output horizontal width[7:0] low byte
        rom[ 54] = 24'h380a_03;                     // TIMING DVPVO - DVP output vertical height[10:8] high byte
        rom[ 55] = 24'h380b_c0;                     // TIMING DVPVO - DVP output vertical height[7:0] low byte
        rom[ 56] = 24'h3810_00;                     // TIMING HOFFSET - ISP horizontal offset[11:8] high byte
        rom[ 57] = 24'h3811_10;                     // TIMING_HOFFSET - ISP horizontal offset[7:0] low byte
        rom[ 58] = 24'h3812_00;                     // TIMING VOFFSET - ISP vertical offset[10:8] high byte
        rom[ 59] = 24'h3813_06;                     // TIMING VOFFSET - ISP vertical offset[7:0] low byte
        rom[ 60] = 24'h3814_31;                     // TIMING X INC
        rom[ 61] = 24'h3815_31;                     // TIMING Y INC
        
        rom[ 62] = 24'h3034_1a;                     // SC PLL CONTRL0 - MIPI bit mode 10-bit mode
        rom[ 63] = 24'h3035_21;                     // SC PLL CONTRL1
        rom[ 64] = 24'h3036_46;                     // SC PLL CONTRL2
        rom[ 65] = 24'h3037_13;                     // SC PLL CONTRL3 - PLL root divider Divided by 2, PLL pre-divider 3
        rom[ 66] = 24'h3038_00;                     // SYSTEM CONTROL
        rom[ 67] = 24'h3039_00;                     // SC PLL CONTRL 5
        
        rom[ 68] = 24'h380c_07;                     // TIMING HTS - Total horizontal size[12:8]
        rom[ 69] = 24'h380d_68;                     // TIMING HTS - Total horizontal size[7:0]
        rom[ 70] = 24'h380e_03;                     // TIMING VTS - Total vertical size[15:8]
        rom[ 71] = 24'h380f_d8;                     // TIMING VTS - Total vertical size[7:0]
        
        rom[ 72] = 24'h3c01_b4;                     // 5060HZ CTRL01
        rom[ 73] = 24'h3c00_04;                     // 5060HZ_CTRL2
        rom[ 74] = 24'h3a08_00;                     // AEC B50 STEP (MSB)
        rom[ 75] = 24'h3a09_93;                     // AEC B50 STEP (LSB)
        rom[ 76] = 24'h3a0e_06;                     // AEC CTRL0E
        rom[ 77] = 24'h3a0a_00;                     // AEC B60 STEP (MSB)
        rom[ 78] = 24'h3a0b_7b;                     // AEC B60 STEP (LSB)
        rom[ 79] = 24'h3a0d_08;                     // AEC CTRL0D
        
        rom[ 80] = 24'h3a00_3c;                     // AEC CTRL00
        rom[ 81] = 24'h3a02_05;                     // AEC MAX EXPO (60HZ) (MSB)
        rom[ 82] = 24'h3a03_c4;                     // AEC MAX EXPO (60HZ) (LSB)
        rom[ 83] = 24'h3a14_05;                     // AEC MAX EXPO (50HZ) (MSB)
        rom[ 84] = 24'h3a15_c4;                     // AEC MAX EXPO (50HZ) (LSB)
        
        rom[ 85] = 24'h3618_00;                     // Not found -- Fix by delete
        rom[ 86] = 24'h3612_29;                     // Not found -- Fix by delete
        rom[ 87] = 24'h3708_64;                     // Not found -- Fix by delete
        rom[ 88] = 24'h3709_52;                     // Not found -- Fix by delete
        rom[ 89] = 24'h370c_03;                     // Not found -- Fix by delete
        
        // Output data format
        rom[ 90] = 24'h4001_02;                     // BLC CTRL01 - BLC start line
        rom[ 91] = 24'h4004_02;                     // BLC CTRL04 - BLC line number
        rom[ 92] = 24'h3000_00;                     // SYSTEM RESET00
        rom[ 93] = 24'h3002_1c;                     // SYSTEM RESET02
        rom[ 94] = 24'h3004_ff;                     // CLOCK ENABLE00
        rom[ 95] = 24'h3006_c3;                     // CLOCK ENABLE02
        rom[ 96] = 24'h300e_58;                     // MIPI CONTROL 00 - mipi_lane_mode Debug mode, MIPI TX PHY power down Power down PHY HS TX, MIPI RX PHY power down Power down PHY LP RX module, mipi_en DVP enable
        rom[ 97] = 24'h302e_00;                     // Not found -- Fix by delete
        rom[ 98] = 24'h4300_30;                     // FORMAT CONTROL 00 - Output format of formatter module YUV422, Output sequence YUYV...
        rom[ 99] = 24'h501f_00;                     // FORMAT MUX CONTROL - Format select ISP YUV422
        rom[100] = 24'h4713_03;                     // JPG MODE SELECT - JPEG mode select - JPEG mode 3
        rom[101] = 24'h4407_04;                     // JPEG CTRL07
        rom[102] = 24'h460b_35;                     // DEBUG MODE
        rom[103] = 24'h460c_22;                     // VFIFO CTRL0C - JPEG dummy data pad speed 2, JPEG footer disable Disable footer, PCLK manual enable DVP PCLK divider control by auto mode
        rom[104] = 24'h3824_01;                     // DVP PCLK divider control by 0x3824[4:0]
        rom[105] = 24'h5001_a3;                     // ISP CONTROL 01 - Special digital effect enable Enable, Scale enable Enable, UV average enable Enable, Color matrix enable Enable, Auto white balance enable Enable
        
        // AWB
        rom[106] = 24'h3406_01;                     // AWB MANUAL CONTROL - AWB gain manual enable Manual
        rom[107] = 24'h3400_06;                     // AWB R GAIN (MSB)
        rom[108] = 24'h3401_80;                     // AWB R GAIN (LSB)
        rom[109] = 24'h3402_04;                     // AWB G GAIN (MSB)
        rom[110] = 24'h3403_00;                     // AWB G GAIN (LSB)
        rom[111] = 24'h3404_06;                     // AWB B GAIN (MSB)
        rom[112] = 24'h3405_00;                     // AWB B GAIN (LSB)
        //awb
        rom[113] = 24'h5180_ff;                     // AWB CONTROL 00 - AWB B block
        rom[114] = 24'h5181_f2;                     // AWB CONTROL 01
        rom[115] = 24'h5182_00;                     // AWB CONTROL 02
        rom[116] = 24'h5183_14;                     // AWB CONTROL 03 - AWB simple enable AWB advance, AWB advance YUV enable, AWB preset 0, AWB SIMF 1, AWB win 2, Debug mode 0
        rom[117] = 24'h5184_25;                     // AWB CONTROL 04 - Count area selection 0, G enable 1, Count limit control 1, Counter threshold 1
        rom[118] = 24'h5185_24;                     // AWB CONTROL 05
        rom[119] = 24'h5186_16;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[120] = 24'h5187_16;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[121] = 24'h5188_16;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[122] = 24'h5189_62;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[123] = 24'h518a_62;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[124] = 24'h518b_f0;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[125] = 24'h518c_b2;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[126] = 24'h518d_50;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[127] = 24'h518e_30;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[128] = 24'h518f_30;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[129] = 24'h5190_50;                     // AWB CONTROL - Advanced AWB Control Registers
        rom[130] = 24'h5191_f8;                     // AWB CONTROL 17 - AWB top limit
        rom[131] = 24'h5192_04;                     // AWB CONTROL 18 - AWB bottom limit
        rom[132] = 24'h5193_70;                     // AWB CONTROL 19 - Red limit
        rom[133] = 24'h5194_f0;                     // AWB CONTROL 20 - Green limit
        rom[134] = 24'h5195_f0;                     // AWB CONTROL 21 - Blue limit
        rom[135] = 24'h5196_03;                     // AWB CONTROL 22 - AWB freeze 0, AWB simple selection AWB simple from after AWB gain, Fast enable 1, AWB bias stat 1
        rom[136] = 24'h5197_01;                     // AWB CONTROL 23 - Local limit
        rom[137] = 24'h5198_04;                     // DEBUG MODE
        rom[138] = 24'h5199_12;                     // DEBUG MODE
        rom[139] = 24'h519a_04;                     // DEBUG MODE
        rom[140] = 24'h519b_00;                     // DEBUG MODE
        rom[141] = 24'h519c_06;                     // DEBUG MODE
        rom[142] = 24'h519d_82;                     // DEBUG MODE
        rom[143] = 24'h519e_38;                     // AWB CONTROL 30 - Debug mode 3, Local limit select 1, Simple stable select 0, Debug mode 0
        //color matrix
        rom[144] = 24'h5381_1e;                     // CMX1
        rom[145] = 24'h5382_5b;                     // CMX2
        rom[146] = 24'h5383_14;                     // CMX3
        rom[147] = 24'h5384_06;                     // CMX4
        rom[148] = 24'h5385_82;                     // CMX5
        rom[149] = 24'h5386_88;                     // CMX6
        rom[150] = 24'h5387_7c;                     // CMX7
        rom[151] = 24'h5388_60;                     // CMX8
        rom[152] = 24'h5389_1c;                     // CMX9
        rom[153] = 24'h538a_01;                     // CMXSIGN (CMX9 sign)
        rom[154] = 24'h538b_98;                     // CMXSIGN (CMX8 sign - CMX1 sign)
        //sharp&noise
        rom[155] = 24'h5300_08;                     // CIP SHARPENMT THRESHOLD 1 - Color Interpolation Sharpen MT Threshold 1
        rom[156] = 24'h5301_30;                     // CIP SHARPENMT THRESHOLD 2 - Color Interpolation Sharpen MT Threshold 2
        rom[157] = 24'h5302_3f;                     // CIP SHARPENMT OFFSET1 - CIP Sharpen MT Offset1 (Y edge mt manual setting when 0x5308[6]=1)
        rom[158] = 24'h5303_10;                     // CIP SHARPENMT OFFSET2 - CIP Sharpen MT Offset2
        rom[159] = 24'h5304_08;                     // CIP DNS THRESHOLD 1 - CIP DNS Threshold 1
        rom[160] = 24'h5305_30;                     // CIP DNS THRESHOLD 2 - CIP DNS Threshold 2
        rom[161] = 24'h5306_18;                     // CIP DNS OFFSET1 - CIP DNS Offset1 (DNS threshold manual setting when 0x5308[4]=1)
        rom[162] = 24'h5307_28;                     // CIP DNS OFFSET2
        rom[163] = 24'h5309_08;                     // CIP SHARPENTH THRESHOLD 1 - CIP Sharpen TH Threshold 1
        rom[164] = 24'h530a_30;                     // CIP SHARPENTH THRESHOLD 2 - CIP Sharpen TH Threshold 2
        rom[165] = 24'h530b_04;                     // CIP SHARPENTH OFFSET1 - CIP Sharpen TH Offset1 (Sharpen threshold manual setting when 0x5308[6]=1)
        rom[166] = 24'h530c_06;                     // CIP SHARPENTH OFFSET2 - CIP Sharpen TH Offset2
		//gamma
		/*{ 0x5480, 0x01 },
		{ 0x5481, 0x06 },
		{ 0x5482, 0x12 },
		{ 0x5483, 0x24 },
		{ 0x5484, 0x4a },
		{ 0x5485, 0x58 },
		{ 0x5486, 0x65 },
		{ 0x5487, 0x72 },
		{ 0x5488, 0x7d },
		{ 0x5489, 0x88 },
		{ 0x548a, 0x92 },
		{ 0x548b, 0xa3 },
		{ 0x548c, 0xb2 },
		{ 0x548d, 0xc8 },
		{ 0x548e, 0xdd },
		{ 0x548f, 0xf0 },
		{ 0x5490, 0x15 },
		//UV adjust
		{ 0x5580, 0x06 },
		{ 0x5583, 0x40 },
		{ 0x5584, 0x20 },
		{ 0x5589, 0x10 },
		{ 0x558a, 0x00 },
		{ 0x558b, 0xf8 },
		//lens shading
		{ 0x5000, 0xa7 },
		{ 0x5800, 0x20 },
		{ 0x5801, 0x19 },
		{ 0x5802, 0x17 },
		{ 0x5803, 0x16 },
		{ 0x5804, 0x18 },
		{ 0x5805, 0x21 },
		{ 0x5806, 0x0F },
		{ 0x5807, 0x0A },
		{ 0x5808, 0x07 },
		{ 0x5809, 0x07 },
		{ 0x580a, 0x0A },
		{ 0x580b, 0x0C },
		{ 0x580c, 0x0A },
		{ 0x580d, 0x03 },
		{ 0x580e, 0x01 },
		{ 0x580f, 0x01 },
		{ 0x5810, 0x03 },
		{ 0x5811, 0x09 },
		{ 0x5812, 0x0A },
		{ 0x5813, 0x03 },
		{ 0x5814, 0x01 },
		{ 0x5815, 0x01 },
		{ 0x5816, 0x03 },
		{ 0x5817, 0x08 },
		{ 0x5818, 0x10 },
		{ 0x5819, 0x0A },
		{ 0x581a, 0x06 },
		{ 0x581b, 0x06 },
		{ 0x581c, 0x08 },
		{ 0x581d, 0x0E },
		{ 0x581e, 0x22 },
		{ 0x581f, 0x18 },
		{ 0x5820, 0x13 },
		{ 0x5821, 0x12 },
		{ 0x5822, 0x16 },
		{ 0x5823, 0x1E },
		{ 0x5824, 0x64 },
		{ 0x5825, 0x2A },
		{ 0x5826, 0x2C },
		{ 0x5827, 0x2A },
		{ 0x5828, 0x46 },
		{ 0x5829, 0x2A },
		{ 0x582a, 0x26 },
		{ 0x582b, 0x24 },
		{ 0x582c, 0x26 },
		{ 0x582d, 0x2A },
		{ 0x582e, 0x28 },
		{ 0x582f, 0x42 },
		{ 0x5830, 0x40 },
		{ 0x5831, 0x42 },
		{ 0x5832, 0x08 },
		{ 0x5833, 0x28 },
		{ 0x5834, 0x26 },
		{ 0x5835, 0x24 },
		{ 0x5836, 0x26 },
		{ 0x5837, 0x2A },
		{ 0x5838, 0x44 },
		{ 0x5839, 0x4A },
		{ 0x583a, 0x2C },
		{ 0x583b, 0x2a },
		{ 0x583c, 0x46 },
		{ 0x583d, 0xCE },

		{ 0x5688, 0x22 },
		{ 0x5689, 0x22 },
		{ 0x568a, 0x42 },
		{ 0x568b, 0x24 },
		{ 0x568c, 0x42 },
		{ 0x568d, 0x24 },
		{ 0x568e, 0x22 },
		{ 0x568f, 0x22 },

		{ 0x5025, 0x00 },

		{ 0x3a0f, 0x30 },
		{ 0x3a10, 0x28 },
		{ 0x3a1b, 0x30 },
		{ 0x3a1e, 0x28 },
		{ 0x3a11, 0x61 },
		{ 0x3a1f, 0x10 },

		{ 0x4005, 0x1a },
		{ 0x3406, 0x00 },//awbinit
    { 0x3503, 0x00 },//awbinit
		{ 0x3008, 0x02 },
		{ 0xffff, 0xff },
		
		
		// RGB QVGA
		{0x3008, 0x02},
		{0x3035, 0x41},
		{0x4740, 0x21},
		{0x4300, 0x61},
		{0x3808, 0x01},
		{0x3809, 0x40},
		{0x380a, 0x00},
		{0x380b, 0xf0},
		{0x501f, 0x01},
		{0xffff, 0xff},*/
  end
endmodule
