/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [7:0] io_seg,
    output reg [5:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    input [5:0] outbutton,
    input resetbutton,
    input confirmbutton,
    input [1:0] modeswitch,
    output reg [1:0] ledplayer
  );
  
  
  
  reg rst;
  
  
  localparam START_state = 2'd0;
  localparam PICKING1_state = 2'd1;
  localparam PICKING2_state = 2'd2;
  localparam PICKINGBOT_state = 2'd3;
  
  reg [1:0] M_state_d, M_state_q = START_state;
  
  wire [1-1:0] M_edge_detector1_out;
  reg [1-1:0] M_edge_detector1_in;
  edge_detector_1 edge_detector1 (
    .clk(clk),
    .in(M_edge_detector1_in),
    .out(M_edge_detector1_out)
  );
  wire [1-1:0] M_button_cond1_out;
  reg [1-1:0] M_button_cond1_in;
  button_conditioner_2 button_cond1 (
    .clk(clk),
    .in(M_button_cond1_in),
    .out(M_button_cond1_out)
  );
  wire [1-1:0] M_edge_detector2_out;
  reg [1-1:0] M_edge_detector2_in;
  edge_detector_1 edge_detector2 (
    .clk(clk),
    .in(M_edge_detector2_in),
    .out(M_edge_detector2_out)
  );
  wire [1-1:0] M_button_cond2_out;
  reg [1-1:0] M_button_cond2_in;
  button_conditioner_2 button_cond2 (
    .clk(clk),
    .in(M_button_cond2_in),
    .out(M_button_cond2_out)
  );
  wire [1-1:0] M_edge_detector3_out;
  reg [1-1:0] M_edge_detector3_in;
  edge_detector_1 edge_detector3 (
    .clk(clk),
    .in(M_edge_detector3_in),
    .out(M_edge_detector3_out)
  );
  wire [1-1:0] M_button_cond3_out;
  reg [1-1:0] M_button_cond3_in;
  button_conditioner_2 button_cond3 (
    .clk(clk),
    .in(M_button_cond3_in),
    .out(M_button_cond3_out)
  );
  wire [1-1:0] M_edge_detector4_out;
  reg [1-1:0] M_edge_detector4_in;
  edge_detector_1 edge_detector4 (
    .clk(clk),
    .in(M_edge_detector4_in),
    .out(M_edge_detector4_out)
  );
  wire [1-1:0] M_button_cond4_out;
  reg [1-1:0] M_button_cond4_in;
  button_conditioner_2 button_cond4 (
    .clk(clk),
    .in(M_button_cond4_in),
    .out(M_button_cond4_out)
  );
  wire [1-1:0] M_edge_detector5_out;
  reg [1-1:0] M_edge_detector5_in;
  edge_detector_1 edge_detector5 (
    .clk(clk),
    .in(M_edge_detector5_in),
    .out(M_edge_detector5_out)
  );
  wire [1-1:0] M_button_cond5_out;
  reg [1-1:0] M_button_cond5_in;
  button_conditioner_2 button_cond5 (
    .clk(clk),
    .in(M_button_cond5_in),
    .out(M_button_cond5_out)
  );
  wire [1-1:0] M_edge_detector6_out;
  reg [1-1:0] M_edge_detector6_in;
  edge_detector_1 edge_detector6 (
    .clk(clk),
    .in(M_edge_detector6_in),
    .out(M_edge_detector6_out)
  );
  wire [1-1:0] M_button_cond6_out;
  reg [1-1:0] M_button_cond6_in;
  button_conditioner_2 button_cond6 (
    .clk(clk),
    .in(M_button_cond6_in),
    .out(M_button_cond6_out)
  );
  wire [1-1:0] M_edge_detector7_out;
  reg [1-1:0] M_edge_detector7_in;
  edge_detector_1 edge_detector7 (
    .clk(clk),
    .in(M_edge_detector7_in),
    .out(M_edge_detector7_out)
  );
  wire [1-1:0] M_button_cond7_out;
  reg [1-1:0] M_button_cond7_in;
  button_conditioner_2 button_cond7 (
    .clk(clk),
    .in(M_button_cond7_in),
    .out(M_button_cond7_out)
  );
  wire [1-1:0] M_edge_detector8_out;
  reg [1-1:0] M_edge_detector8_in;
  edge_detector_1 edge_detector8 (
    .clk(clk),
    .in(M_edge_detector8_in),
    .out(M_edge_detector8_out)
  );
  wire [1-1:0] M_button_cond8_out;
  reg [1-1:0] M_button_cond8_in;
  button_conditioner_2 button_cond8 (
    .clk(clk),
    .in(M_button_cond8_in),
    .out(M_button_cond8_out)
  );
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_17 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [7-1:0] M_seg_seg;
  wire [6-1:0] M_seg_sel;
  reg [24-1:0] M_seg_values;
  multi_seven_seg_18 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  reg [23:0] M_a_d, M_a_q = 1'h0;
  reg M_f1_d, M_f1_q = 1'h0;
  reg M_f2_d, M_f2_q = 1'h0;
  reg M_f3_d, M_f3_q = 1'h0;
  reg M_f4_d, M_f4_q = 1'h0;
  reg M_f5_d, M_f5_q = 1'h0;
  reg M_f6_d, M_f6_q = 1'h0;
  reg M_f8_d, M_f8_q = 1'h0;
  reg M_f9_d, M_f9_q = 1'h0;
  reg M_f10_d, M_f10_q = 1'h0;
  reg [29:0] M_f11_d, M_f11_q = 1'h0;
  reg M_inputscounter_d, M_inputscounter_q = 1'h0;
  
  reg [3:0] z;
  
  localparam CASES = 4'ha;
  
  reg [119:0] b;
  
  integer x;
  integer y;
  integer i;
  integer j;
  integer bb;
  
  always @* begin
    M_state_d = M_state_q;
    M_f6_d = M_f6_q;
    M_f8_d = M_f8_q;
    M_f9_d = M_f9_q;
    M_f11_d = M_f11_q;
    M_f10_d = M_f10_q;
    M_a_d = M_a_q;
    M_f1_d = M_f1_q;
    M_inputscounter_d = M_inputscounter_q;
    M_f3_d = M_f3_q;
    M_f2_d = M_f2_q;
    M_f5_d = M_f5_q;
    M_f4_d = M_f4_q;
    
    b[0+11-:12] = 12'h953;
    b[12+11-:12] = 12'h278;
    b[24+11-:12] = 12'h864;
    b[36+11-:12] = 12'h739;
    b[48+11-:12] = 12'h685;
    b[60+11-:12] = 12'h259;
    b[72+11-:12] = 12'h768;
    b[84+11-:12] = 12'h997;
    b[96+11-:12] = 12'h376;
    b[108+11-:12] = 12'h825;
    ledplayer[0+0-:1] = 1'h1 - M_f9_q;
    ledplayer[1+0-:1] = 1'h1 - M_f10_q;
    led = 1'h0;
    M_seg_values = M_a_q;
    if (M_state_q == PICKINGBOT_state) begin
      if (M_f11_q > 26'h3938700) begin
        x = M_a_q[0+3-:4] ^ M_a_q[4+3-:4] ^ M_a_q[8+3-:4];
        y = 1'h0;
        if (M_a_q[(y)*4+3-:4] < M_a_q[4+3-:4]) begin
          y = 1'h1;
        end
        if (M_a_q[(y)*4+3-:4] < M_a_q[8+3-:4]) begin
          y = 2'h2;
        end
        bb = 1'h0;
        if (x == 1'h0) begin
          M_a_d[(y)*4+3-:4] = M_a_q[(y)*4+3-:4] - 1'h1;
        end else begin
          if (x <= M_a_q[(y)*4+3-:4]) begin
            M_a_d[(y)*4+3-:4] = M_a_q[(y)*4+3-:4] - x;
            j = 1'h1;
            for (i = 1'h0; i < 2'h3; i = i + 1) begin
              if (i != y) begin
                if (M_a_q[(i)*4+3-:4] != 1'h0) begin
                  j = 1'h0;
                end
              end
            end
            if (j == 1'h1 && (M_a_q[(y)*4+3-:4] - x) == 1'h0) begin
              M_state_d = START_state;
              bb = 1'h1;
              M_f9_d = 1'h0;
              M_f10_d = 1'h0;
            end
          end else begin
            z[3+0-:1] = 1'h0;
            for (i = 1'h0; i < 2'h3; i = i + 1) begin
              x = 1'h0;
              for (j = 1'h0; j < 2'h3; j = j + 1) begin
                if (j != y) begin
                  x = x + M_a_q[(j)*4+(i)*1+0-:1];
                end
              end
              if (x == 1'h1) begin
                z[(i)*1+0-:1] = 1'h1;
              end else begin
                z[(i)*1+0-:1] = 1'h0;
              end
            end
            M_a_d[(y)*4+3-:4] = z;
            j = 1'h1;
            for (i = 1'h0; i < 2'h3; i = i + 1) begin
              if (i != y) begin
                if (M_a_q[(i)*4+3-:4] != 1'h0) begin
                  j = 1'h0;
                end
              end
            end
            if (j == 1'h1 && (z) == 1'h0) begin
              M_state_d = START_state;
              M_f9_d = 1'h0;
              M_f10_d = 1'h0;
              bb = 1'h1;
            end
          end
        end
        if (bb == 1'h0) begin
          M_state_d = PICKING1_state;
          M_f9_d = 1'h1;
          M_f10_d = 1'h0;
        end
      end else begin
        M_f11_d = M_f11_q + 1'h1;
      end
    end
    M_button_cond1_in = outbutton[0+0-:1];
    M_edge_detector1_in = M_button_cond1_out;
    x = M_edge_detector1_out;
    if (x == 1'h1) begin
      if (M_f1_q == 1'h1) begin
        if (M_a_q[12+3-:4] > 1'h0) begin
          M_a_d[12+3-:4] = M_a_q[12+3-:4] - 1'h1;
        end
        M_f1_d = 1'h0;
      end else begin
        M_f1_d = 1'h1;
      end
    end
    M_button_cond2_in = outbutton[1+0-:1];
    M_edge_detector2_in = M_button_cond2_out;
    x = M_edge_detector2_out;
    if (x == 1'h1) begin
      M_a_d[16+3-:4] = 4'h0;
      M_a_d[20+3-:4] = 4'h0;
      if (M_f2_q == 1'h1) begin
        if (M_a_q[12+3-:4] < M_a_q[0+3-:4]) begin
          M_a_d[12+3-:4] = M_a_q[12+3-:4] + 1'h1;
        end
        M_f2_d = 1'h0;
      end else begin
        M_f2_d = 1'h1;
      end
    end
    M_button_cond3_in = outbutton[2+0-:1];
    M_edge_detector3_in = M_button_cond3_out;
    x = M_edge_detector3_out;
    if (x == 1'h1) begin
      if (M_f3_q == 1'h1) begin
        if (M_a_q[16+3-:4] > 1'h0) begin
          M_a_d[16+3-:4] = M_a_q[16+3-:4] - 1'h1;
        end
        M_f3_d = 1'h0;
      end else begin
        M_f3_d = 1'h1;
      end
    end
    M_button_cond4_in = outbutton[3+0-:1];
    M_edge_detector4_in = M_button_cond4_out;
    x = M_edge_detector4_out;
    if (x == 1'h1) begin
      M_a_d[12+3-:4] = 4'h0;
      M_a_d[20+3-:4] = 4'h0;
      if (M_f4_q == 1'h1) begin
        if (M_a_q[16+3-:4] < M_a_q[4+3-:4]) begin
          M_a_d[16+3-:4] = M_a_q[16+3-:4] + 1'h1;
        end
        M_f4_d = 1'h0;
      end else begin
        M_f4_d = 1'h1;
      end
    end
    M_button_cond5_in = outbutton[4+0-:1];
    M_edge_detector5_in = M_button_cond5_out;
    x = M_edge_detector5_out;
    if (x == 1'h1) begin
      if (M_f5_q == 1'h1) begin
        if (M_a_q[20+3-:4] > 1'h0) begin
          M_a_d[20+3-:4] = M_a_q[20+3-:4] - 1'h1;
        end
        M_f5_d = 1'h0;
      end else begin
        M_f5_d = 1'h1;
      end
    end
    M_button_cond6_in = outbutton[5+0-:1];
    M_edge_detector6_in = M_button_cond6_out;
    x = M_edge_detector6_out;
    if (x == 1'h1) begin
      M_a_d[12+3-:4] = 4'h0;
      M_a_d[16+3-:4] = 4'h0;
      if (M_f6_q == 1'h1) begin
        if (M_a_q[20+3-:4] < M_a_q[8+3-:4]) begin
          M_a_d[20+3-:4] = M_a_q[20+3-:4] + 1'h1;
        end
        M_f6_d = 1'h0;
      end else begin
        M_f6_d = 1'h1;
      end
    end
    M_button_cond7_in = resetbutton;
    M_edge_detector7_in = M_button_cond7_out;
    x = M_edge_detector7_out;
    if (x == 1'h1) begin
      M_state_d = START_state;
      M_f9_d = 1'h0;
      M_f10_d = 1'h0;
      M_a_d[0+3-:4] = 4'h0;
      M_a_d[4+3-:4] = 4'h0;
      M_a_d[8+3-:4] = 4'h0;
      M_a_d[12+3-:4] = 4'h0;
      M_a_d[16+3-:4] = 4'h0;
      M_a_d[20+3-:4] = 4'h0;
    end
    M_button_cond8_in = confirmbutton;
    M_edge_detector8_in = M_button_cond8_out;
    x = M_edge_detector8_out;
    if (x == 1'h1) begin
      if (M_f8_q == 1'h0) begin
        if (M_state_q == START_state) begin
          M_state_d = PICKING1_state;
          M_f9_d = 1'h1;
          M_f10_d = 1'h0;
          if (M_inputscounter_q == 4'h9) begin
            M_inputscounter_d = 1'h0;
          end else begin
            M_inputscounter_d = M_inputscounter_q + 1'h1;
          end
          M_a_d[0+3-:4] = b[(M_inputscounter_q)*12+0+3-:4];
          M_a_d[4+3-:4] = b[(M_inputscounter_q)*12+4+3-:4];
          M_a_d[8+3-:4] = b[(M_inputscounter_q)*12+8+3-:4];
          M_a_d[12+3-:4] = 1'h0;
          M_a_d[16+3-:4] = 1'h0;
          M_a_d[20+3-:4] = 1'h0;
        end else begin
          if (M_a_q[12+3-:4] != 1'h0 || M_a_q[16+3-:4] != 1'h0 || M_a_q[20+3-:4] != 1'h0) begin
            M_a_d[0+3-:4] = M_a_q[0+3-:4] - M_a_q[12+3-:4];
            M_a_d[4+3-:4] = M_a_q[4+3-:4] - M_a_q[16+3-:4];
            M_a_d[8+3-:4] = M_a_q[8+3-:4] - M_a_q[20+3-:4];
            M_a_d[12+3-:4] = 1'h0;
            M_a_d[16+3-:4] = 1'h0;
            M_a_d[20+3-:4] = 1'h0;
            if ((M_a_q[0+3-:4] - M_a_q[12+3-:4]) == 1'h0 && (M_a_q[4+3-:4] - M_a_q[16+3-:4]) == 1'h0 && (M_a_q[8+3-:4] - M_a_q[20+3-:4]) == 1'h0) begin
              if (M_state_q == PICKING1_state) begin
                led[5+0-:1] = 1'h1;
                led[6+0-:1] = 1'h0;
              end else begin
                led[6+0-:1] = 1'h1;
                led[5+0-:1] = 1'h0;
              end
              M_state_d = START_state;
              M_f9_d = 1'h0;
              M_f10_d = 1'h0;
            end
          end else begin
            led[0+0-:1] = 1'h1;
          end
          if (M_state_q == PICKING1_state) begin
            if (modeswitch[1+0-:1] == 1'h1) begin
              M_state_d = PICKINGBOT_state;
              M_f11_d = 1'h0;
            end else begin
              M_state_d = PICKING2_state;
            end
            M_f9_d = 1'h0;
            M_f10_d = 1'h1;
          end else begin
            M_f9_d = 1'h1;
            M_f10_d = 1'h0;
            M_state_d = PICKING1_state;
          end
        end
        M_f8_d = 1'h1;
      end else begin
        M_f8_d = 1'h0;
      end
    end
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led[1+0-:1] = modeswitch[0+0-:1];
    led[2+0-:1] = modeswitch[1+0-:1];
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_seg = ~M_seg_seg;
    io_sel = M_seg_sel;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_a_q <= 1'h0;
      M_f1_q <= 1'h0;
      M_f2_q <= 1'h0;
      M_f3_q <= 1'h0;
      M_f4_q <= 1'h0;
      M_f5_q <= 1'h0;
      M_f6_q <= 1'h0;
      M_f8_q <= 1'h0;
      M_f9_q <= 1'h0;
      M_f10_q <= 1'h0;
      M_f11_q <= 1'h0;
      M_inputscounter_q <= 1'h0;
    end else begin
      M_a_q <= M_a_d;
      M_f1_q <= M_f1_d;
      M_f2_q <= M_f2_d;
      M_f3_q <= M_f3_d;
      M_f4_q <= M_f4_d;
      M_f5_q <= M_f5_d;
      M_f6_q <= M_f6_d;
      M_f8_q <= M_f8_d;
      M_f9_q <= M_f9_d;
      M_f10_q <= M_f10_d;
      M_f11_q <= M_f11_d;
      M_inputscounter_q <= M_inputscounter_d;
    end
  end
  
  
  always @(posedge clk) begin
    M_state_q <= M_state_d;
  end
  
endmodule
