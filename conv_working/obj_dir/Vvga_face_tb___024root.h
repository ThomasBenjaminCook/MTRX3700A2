// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vvga_face_tb.h for the primary calling header

#ifndef VERILATED_VVGA_FACE_TB___024ROOT_H_
#define VERILATED_VVGA_FACE_TB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"
class Vvga_face_tb_dstream;


class Vvga_face_tb__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vvga_face_tb___024root final : public VerilatedModule {
  public:
    // CELLS
    Vvga_face_tb_dstream* __PVT__vga_face_tb__DOT__uut__DOT__pixel_input;
    Vvga_face_tb_dstream* __PVT__vga_face_tb__DOT__uut__DOT__pixel_output;

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ vga_face_tb__DOT__clk;
    CData/*0:0*/ vga_face_tb__DOT__reset;
    CData/*1:0*/ vga_face_tb__DOT__face_select;
    CData/*0:0*/ vga_face_tb__DOT__ready;
    CData/*2:0*/ vga_face_tb__DOT__uut__DOT__happy_face_q;
    CData/*2:0*/ vga_face_tb__DOT__uut__DOT__neutral_face_q;
    CData/*2:0*/ vga_face_tb__DOT__uut__DOT__angry_face_q;
    CData/*0:0*/ vga_face_tb__DOT__uut__DOT__read_enable;
    CData/*2:0*/ vga_face_tb__DOT__uut__DOT__current_pixel;
    CData/*0:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready;
    CData/*0:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__i;
    CData/*0:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__overflow;
    CData/*0:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__vga_face_tb__DOT__clk__0;
    CData/*0:0*/ __VactContinue;
    IData/*29:0*/ vga_face_tb__DOT__data;
    IData/*17:0*/ vga_face_tb__DOT__uut__DOT__pixel_index;
    IData/*17:0*/ vga_face_tb__DOT__uut__DOT__pixel_index_next;
    IData/*19:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter;
    VlWide<3>/*64:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red;
    VlWide<3>/*64:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green;
    VlWide<3>/*64:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue;
    IData/*31:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__store_values__DOT__unnamedblk1__DOT__j;
    IData/*29:0*/ vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*2:0*/, 76800> vga_face_tb__DOT__uut__DOT__happy_face;
    VlUnpacked<CData/*2:0*/, 76800> vga_face_tb__DOT__uut__DOT__neutral_face;
    VlUnpacked<CData/*2:0*/, 76800> vga_face_tb__DOT__uut__DOT__angry_face;
    VlUnpacked<IData/*29:0*/, 9> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h;
    VlUnpacked<IData/*29:0*/, 44> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer;
    VlUnpacked<IData/*29:0*/, 44> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old;
    VlUnpacked<QData/*59:0*/, 9> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red;
    VlUnpacked<QData/*59:0*/, 9> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green;
    VlUnpacked<QData/*59:0*/, 9> vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vvga_face_tb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vvga_face_tb___024root(Vvga_face_tb__Syms* symsp, const char* v__name);
    ~Vvga_face_tb___024root();
    VL_UNCOPYABLE(Vvga_face_tb___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
