/*
 *  Commands for the LCD controller.
 *    Format: bit-8 is the Memory Address for LCD controller (this is also = RS).
 *         bits 7:0 ASCII charater code (RS=1) or control code (RS=0). 
 */
package lcd_inst_pkg;
    // verilator lint_off UNUSEDPARAM
    /** Control Commands **/

    // Clear Display
    localparam logic [8:0] CLEAR_DISPLAY        = (9'h001);
    // Return Home
    localparam logic [8:0] RETURN_HOME          = (9'h002);
    //Entry Mode 
    localparam logic [8:0] ENTRY_DIR_RIGHT      = (9'h006);
    localparam logic [8:0] ENTRY_DIR_LEFT       = (9'h004);
    localparam logic [8:0] ENTRY_SHIFT_ENABLE   = (9'h005);
    localparam logic [8:0] ENTRY_SHIFT_DISABLE  = (9'h004);

    // Display ON/OFF Control
    localparam logic [8:0] DISPLAY_ON           = (9'h00C);
    localparam logic [8:0] CURSOR_ON            = (9'h00E);
    localparam logic [8:0] CURSOR_BLINK_ON      = (9'h00F);

    localparam logic [8:0] DISPLAY_OFF          = (9'h008);

    localparam logic [8:0] CURSOR_OFF           = (9'h00C); //equivalent to DISPLAY_ON
    localparam logic [8:0] CURSOR_BLINK_OFF     = (9'h00E); //equivalent to CURSOR_ON

    // Cursor/Display Shift
    // cause the entire display to move to left or right (the origin of the display is also changed)
    localparam logic [8:0] DISPLAY_SHIFT_RIGHT  = (9'h01C);
    localparam logic [8:0] DISPLAY_SHIFT_LEFT   = (9'h018);
    // move the cursor to left or right
    localparam logic [8:0] CURSOR_SHIFT_RIGHT   = (9'h014);
    localparam logic [8:0] CURSOR_SHIFT_LEFT    = (9'h010);

    /** Commands to Write ASCII Characters **/

    // Numeric characters (0-9)
    localparam logic [8:0] _0 = {1'b1, 8'd48};
    localparam logic [8:0] _1 = {1'b1, 8'd49};
    localparam logic [8:0] _2 = {1'b1, 8'd50};
    localparam logic [8:0] _3 = {1'b1, 8'd51};
    localparam logic [8:0] _4 = {1'b1, 8'd52};
    localparam logic [8:0] _5 = {1'b1, 8'd53};
    localparam logic [8:0] _6 = {1'b1, 8'd54};
    localparam logic [8:0] _7 = {1'b1, 8'd55};
    localparam logic [8:0] _8 = {1'b1, 8'd56};
    localparam logic [8:0] _9 = {1'b1, 8'd57};

    // Uppercase alphabetic characters (A-Z)
    localparam logic [8:0] _A = {1'b1, 8'd65};
    localparam logic [8:0] _B = {1'b1, 8'd66};
    localparam logic [8:0] _C = {1'b1, 8'd67};
    localparam logic [8:0] _D = {1'b1, 8'd68};
    localparam logic [8:0] _E = {1'b1, 8'd69};
    localparam logic [8:0] _F = {1'b1, 8'd70};
    localparam logic [8:0] _G = {1'b1, 8'd71};
    localparam logic [8:0] _H = {1'b1, 8'd72};
    localparam logic [8:0] _I = {1'b1, 8'd73};
    localparam logic [8:0] _J = {1'b1, 8'd74};
    localparam logic [8:0] _K = {1'b1, 8'd75};
    localparam logic [8:0] _L = {1'b1, 8'd76};
    localparam logic [8:0] _M = {1'b1, 8'd77};
    localparam logic [8:0] _N = {1'b1, 8'd78};
    localparam logic [8:0] _O = {1'b1, 8'd79};
    localparam logic [8:0] _P = {1'b1, 8'd80};
    localparam logic [8:0] _Q = {1'b1, 8'd81};
    localparam logic [8:0] _R = {1'b1, 8'd82};
    localparam logic [8:0] _S = {1'b1, 8'd83};
    localparam logic [8:0] _T = {1'b1, 8'd84};
    localparam logic [8:0] _U = {1'b1, 8'd85};
    localparam logic [8:0] _V = {1'b1, 8'd86};
    localparam logic [8:0] _W = {1'b1, 8'd87};
    localparam logic [8:0] _X = {1'b1, 8'd88};
    localparam logic [8:0] _Y = {1'b1, 8'd89};
    localparam logic [8:0] _Z = {1'b1, 8'd90};

    // Lowercase alphabetic characters (a-z)
    localparam logic [8:0] _a = {1'b1, 8'd97};
    localparam logic [8:0] _b = {1'b1, 8'd98};
    localparam logic [8:0] _c = {1'b1, 8'd99};
    localparam logic [8:0] _d = {1'b1, 8'd100};
    localparam logic [8:0] _e = {1'b1, 8'd101};
    localparam logic [8:0] _f = {1'b1, 8'd102};
    localparam logic [8:0] _g = {1'b1, 8'd103};
    localparam logic [8:0] _h = {1'b1, 8'd104};
    localparam logic [8:0] _i = {1'b1, 8'd105};
    localparam logic [8:0] _j = {1'b1, 8'd106};
    localparam logic [8:0] _k = {1'b1, 8'd107};
    localparam logic [8:0] _l = {1'b1, 8'd108};
    localparam logic [8:0] _m = {1'b1, 8'd109};
    localparam logic [8:0] _n = {1'b1, 8'd110};
    localparam logic [8:0] _o = {1'b1, 8'd111};
    localparam logic [8:0] _p = {1'b1, 8'd112};
    localparam logic [8:0] _q = {1'b1, 8'd113};
    localparam logic [8:0] _r = {1'b1, 8'd114};
    localparam logic [8:0] _s = {1'b1, 8'd115};
    localparam logic [8:0] _t = {1'b1, 8'd116};
    localparam logic [8:0] _u = {1'b1, 8'd117};
    localparam logic [8:0] _v = {1'b1, 8'd118};
    localparam logic [8:0] _w = {1'b1, 8'd119};
    localparam logic [8:0] _x = {1'b1, 8'd120};
    localparam logic [8:0] _y = {1'b1, 8'd121};
    localparam logic [8:0] _z = {1'b1, 8'd122};

    // Special characters
    localparam logic [8:0] _SPACE         = {1'b1, 8'd32};
    localparam logic [8:0] _EXCLAMATION   = {1'b1, 8'd33}; // !
    localparam logic [8:0] _DOUBLE_QUOTE  = {1'b1, 8'd34}; // "
    localparam logic [8:0] _HASH          = {1'b1, 8'd35}; // #
    localparam logic [8:0] _DOLLAR        = {1'b1, 8'd36}; // $
    localparam logic [8:0] _PERCENT       = {1'b1, 8'd37}; // %
    localparam logic [8:0] _AMPERSAND     = {1'b1, 8'd38}; // &
    localparam logic [8:0] _SINGLE_QUOTE  = {1'b1, 8'd39}; // '
    localparam logic [8:0] _OPEN_PAREN    = {1'b1, 8'd40}; // (
    localparam logic [8:0] _CLOSE_PAREN   = {1'b1, 8'd41}; // )
    localparam logic [8:0] _ASTERISK      = {1'b1, 8'd42}; // *
    localparam logic [8:0] _PLUS          = {1'b1, 8'd43}; // +
    localparam logic [8:0] _COMMA         = {1'b1, 8'd44}; // ,
    localparam logic [8:0] _MINUS         = {1'b1, 8'd45}; // -
    localparam logic [8:0] _PERIOD        = {1'b1, 8'd46}; // .
    localparam logic [8:0] _SLASH         = {1'b1, 8'd47}; // /
    localparam logic [8:0] _COLON         = {1'b1, 8'd58}; // :
    localparam logic [8:0] _SEMICOLON     = {1'b1, 8'd59}; // ;
    localparam logic [8:0] _LESS_THAN     = {1'b1, 8'd60}; // <
    localparam logic [8:0] _EQUALS        = {1'b1, 8'd61}; // =
    localparam logic [8:0] _GREATER_THAN  = {1'b1, 8'd62}; // >
    localparam logic [8:0] _QUESTION      = {1'b1, 8'd63}; // ?
    localparam logic [8:0] _AT            = {1'b1, 8'd64}; // @
    localparam logic [8:0] _OPEN_BRACKET  = {1'b1, 8'd91}; // [
    localparam logic [8:0] _BACKSLASH     = {1'b1, 8'd92}; // \
    localparam logic [8:0] _CLOSE_BRACKET = {1'b1, 8'd93}; // ]
    localparam logic [8:0] _CARET         = {1'b1, 8'd94}; // ^
    localparam logic [8:0] _UNDERSCORE    = {1'b1, 8'd95}; // _
    localparam logic [8:0] _BACKTICK      = {1'b1, 8'd96}; // `
    localparam logic [8:0] _OPEN_BRACE    = {1'b1, 8'd123}; // {
    localparam logic [8:0] _PIPE          = {1'b1, 8'd124}; // |
    localparam logic [8:0] _CLOSE_BRACE   = {1'b1, 8'd125}; // }
    localparam logic [8:0] _TILDE         = {1'b1, 8'd126}; // ~

    // verilator lint_on UNUSEDPARAM

endpackage

