// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vvga_face_tb__Syms.h"


void Vvga_face_tb___024root__trace_chg_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vvga_face_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_chg_0\n"); );
    // Init
    Vvga_face_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vvga_face_tb___024root*>(voidSelf);
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vvga_face_tb___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vvga_face_tb___024root__trace_chg_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[0U])) {
        bufp->chgIData(oldp+0,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[0]),30);
        bufp->chgIData(oldp+1,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[1]),30);
        bufp->chgIData(oldp+2,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[2]),30);
        bufp->chgIData(oldp+3,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[3]),30);
        bufp->chgIData(oldp+4,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[4]),30);
        bufp->chgIData(oldp+5,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[5]),30);
        bufp->chgIData(oldp+6,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[6]),30);
        bufp->chgIData(oldp+7,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[7]),30);
        bufp->chgIData(oldp+8,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[8]),30);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+9,((0U == vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)));
        bufp->chgBit(oldp+10,((0x12bffU == vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)));
        bufp->chgBit(oldp+11,(vlSelf->vga_face_tb__DOT__ready));
        bufp->chgBit(oldp+12,((1U & vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.data)));
        bufp->chgIData(oldp+13,(vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.data),30);
        bufp->chgIData(oldp+14,(vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index),18);
        bufp->chgCData(oldp+15,(vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q),3);
        bufp->chgCData(oldp+16,(vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q),3);
        bufp->chgCData(oldp+17,(vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q),3);
        bufp->chgIData(oldp+18,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter),20);
        bufp->chgBit(oldp+19,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready));
        bufp->chgIData(oldp+20,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                [0U]),30);
        bufp->chgQData(oldp+21,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[0]),60);
        bufp->chgQData(oldp+23,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[1]),60);
        bufp->chgQData(oldp+25,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[2]),60);
        bufp->chgQData(oldp+27,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[3]),60);
        bufp->chgQData(oldp+29,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[4]),60);
        bufp->chgQData(oldp+31,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[5]),60);
        bufp->chgQData(oldp+33,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[6]),60);
        bufp->chgQData(oldp+35,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[7]),60);
        bufp->chgQData(oldp+37,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[8]),60);
        bufp->chgQData(oldp+39,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[0]),60);
        bufp->chgQData(oldp+41,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[1]),60);
        bufp->chgQData(oldp+43,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[2]),60);
        bufp->chgQData(oldp+45,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[3]),60);
        bufp->chgQData(oldp+47,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[4]),60);
        bufp->chgQData(oldp+49,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[5]),60);
        bufp->chgQData(oldp+51,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[6]),60);
        bufp->chgQData(oldp+53,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[7]),60);
        bufp->chgQData(oldp+55,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[8]),60);
        bufp->chgQData(oldp+57,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[0]),60);
        bufp->chgQData(oldp+59,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[1]),60);
        bufp->chgQData(oldp+61,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[2]),60);
        bufp->chgQData(oldp+63,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[3]),60);
        bufp->chgQData(oldp+65,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[4]),60);
        bufp->chgQData(oldp+67,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[5]),60);
        bufp->chgQData(oldp+69,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[6]),60);
        bufp->chgQData(oldp+71,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[7]),60);
        bufp->chgQData(oldp+73,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[8]),60);
        bufp->chgWData(oldp+75,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red),65);
        bufp->chgWData(oldp+78,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green),65);
        bufp->chgWData(oldp+81,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue),65);
        bufp->chgBit(oldp+84,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q));
        bufp->chgIData(oldp+85,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__store_values__DOT__unnamedblk1__DOT__j),32);
        bufp->chgBit(oldp+86,(vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.valid));
    }
    bufp->chgBit(oldp+87,(vlSelf->vga_face_tb__DOT__clk));
    bufp->chgBit(oldp+88,(vlSelf->vga_face_tb__DOT__reset));
    bufp->chgCData(oldp+89,(vlSelf->vga_face_tb__DOT__face_select),2);
    bufp->chgBit(oldp+90,((1U & (~ (IData)(vlSelf->vga_face_tb__DOT__reset)))));
    bufp->chgIData(oldp+91,(vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next),18);
    bufp->chgBit(oldp+92,(vlSelf->vga_face_tb__DOT__uut__DOT__read_enable));
    bufp->chgCData(oldp+93,(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel),3);
    bufp->chgIData(oldp+94,(((0x3fc00000U & ((- (IData)(
                                                        (1U 
                                                         & ((IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel) 
                                                            >> 2U)))) 
                                             << 0x16U)) 
                             | ((0xff000U & ((- (IData)(
                                                        (1U 
                                                         & ((IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel) 
                                                            >> 1U)))) 
                                             << 0xcU)) 
                                | (0x3fcU & ((- (IData)(
                                                        (1U 
                                                         & (IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel)))) 
                                             << 2U))))),30);
}

void Vvga_face_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_cleanup\n"); );
    // Init
    Vvga_face_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vvga_face_tb___024root*>(voidSelf);
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
