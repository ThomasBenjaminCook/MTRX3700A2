// File digital_cam_impl1/address_Generator.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2017 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

// no timescale needed

module Address_Generator(
input wire CLK25,
input wire enable,
input wire vsync,
output wire [16:0] address
);

// horloge de 25 MHz et signal d'activation respectivement
// adresse genere



reg [16:0] val = 1'b0;  // signal intermidiaire

  assign address = val;
  // adresse genere
  always @(posedge CLK25) begin
    if((enable == 1'b1)) begin
      if((val < (320 * 240))) begin
        // si l'espace memoire est balay completement        
        val <= val + 1;
      end
    end
    if(vsync == 1'b0) begin
      val <= {17{1'b0}};
    end
  end


endmodule
