// File digital_cam_impl1/vga.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
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

// ok, let's brush up our French here; :-)
// no timescale needed

module VGA(
input wire CLK25,
output wire clkout,
output reg Hsync,
output reg Vsync,
output wire Nblank,
output reg activeArea,
output wire Nsync
);

// Horloge d'entre de 25 MHz              
// Horloge de sortie vers le ADV7123 et l'ecran TFT
// les deux signaux de synchronisation pour l'ecran VGA
// signal de commande du convertisseur N/A ADV7123
// signaux de synchronisation et commande de l'ecran TFT



reg [9:0] Hcnt = 10'b0000000000;  // pour le comptage des colonnes
reg [9:0] Vcnt = 10'b1000001000;  // pour le comptage des lignes
wire video;
parameter HM = 799;  //la taille maximale considere 800 (horizontal)
parameter HD = 640;  //la taille de l'ecran (horizontal)
parameter HF = 16;  //front porch
parameter HB = 48;  //back porch
parameter HR = 96;  //sync time
parameter VM = 524;  //la taille maximale considere 525 (vertical)  
parameter VD = 480;  //la taille de l'ecran (vertical)
parameter VF = 10;  //front porch
parameter VB = 33;  //back porch
parameter VR = 2;  //retrace

  // initialisation d'un compteur de 0 a 799 (800 pixel par ligne):
  // a chaque front d'horloge en incremente le compteur de colonnes
  // c-a-d du 0 a 799.
  always @(posedge CLK25) begin
    if((Hcnt == HM)) begin
      // 799
      Hcnt <= 10'b0000000000;
      if((Vcnt == VM)) begin
        // 524
        Vcnt <= 10'b0000000000;
        activeArea <= 1'b1;
      end
      else begin
        if(Vcnt < (240 - 1)) begin
          activeArea <= 1'b1;
        end
        Vcnt <= Vcnt + 1;
      end
    end
    else begin
      if(Hcnt == (320 - 1)) begin
        activeArea <= 1'b0;
      end
      Hcnt <= Hcnt + 1;
    end
  end

  // generation du signal de synchronisation horizontale Hsync:
  always @(posedge CLK25) begin
    if((Hcnt >= (HD + HF) && Hcnt <= (HD + HF + HR - 1))) begin
      // Hcnt >= 656 and Hcnt <= 751
      Hsync <= 1'b0;
    end
    else begin
      Hsync <= 1'b1;
    end
  end

  // generation du signal de synchronisation verticale Vsync:
  always @(posedge CLK25) begin
    if((Vcnt >= (VD + VF) && Vcnt <= (VD + VF + VR - 1))) begin
      //-Vcnt >= 490 and vcnt<= 491
      Vsync <= 1'b0;
    end
    else begin
      Vsync <= 1'b1;
    end
  end

  // Nblank et Nsync pour commander le covertisseur ADV7123:
  assign Nsync = 1'b1;
  assign video = (Hcnt < HD) && (Vcnt < VD) ? 1'b1 : 1'b0;
  assign Nblank = video;
  assign clkout = CLK25;

endmodule
