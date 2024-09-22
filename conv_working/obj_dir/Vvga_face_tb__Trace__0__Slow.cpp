// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vvga_face_tb__Syms.h"


VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_input__0(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep);
VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_output__0(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_sub__TOP__0(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("vga_face_tb", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+88,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+89,0,"reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+90,0,"face_select",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+96,0,"data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
    tracep->declBit(c+10,0,"startofpacket",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"endofpacket",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+91,0,"valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"conv_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+97,0,"CLK_T",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("uut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+88,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+89,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+90,0,"face_select",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+14,0,"conv_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
    tracep->declBit(c+10,0,"startofpacket",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"endofpacket",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+91,0,"valid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"ready",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+98,0,"NumPixels",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+99,0,"NumColourBits",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+15,0,"pixel_index",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 17,0);
    tracep->declBus(c+92,0,"pixel_index_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 17,0);
    tracep->declBus(c+16,0,"happy_face_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+17,0,"neutral_face_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+18,0,"angry_face_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+93,0,"read_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+94,0,"current_pixel",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+95,0,"data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
    tracep->pushPrefix("pixel_input", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_input__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("pixel_output", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_output__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("u_edge_conv", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+100,0,"W",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+101,0,"W_FRAC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("x", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_input__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->pushPrefix("y", VerilatedTracePrefixType::SCOPE_INTERFACE);
    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_output__0(vlSelf, tracep);
    tracep->popPrefix();
    tracep->declBus(c+97,0,"WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+97,0,"HEIGHT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+102,0,"N",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("h", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 9; ++i) {
        tracep->declBus(c+1+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 29,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+19,0,"counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 19,0);
    tracep->declBit(c+20,0,"conv_ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+21,0,"test",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
    tracep->pushPrefix("mult_result_red", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 9; ++i) {
        tracep->declQuad(c+22+i*2,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 59,0);
    }
    tracep->popPrefix();
    tracep->pushPrefix("mult_result_green", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 9; ++i) {
        tracep->declQuad(c+40+i*2,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 59,0);
    }
    tracep->popPrefix();
    tracep->pushPrefix("mult_result_blue", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 9; ++i) {
        tracep->declQuad(c+58+i*2,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 59,0);
    }
    tracep->popPrefix();
    tracep->declArray(c+76,0,"macc_red",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 64,0);
    tracep->declArray(c+79,0,"macc_green",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 64,0);
    tracep->declArray(c+82,0,"macc_blue",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 64,0);
    tracep->declBit(c+103,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+104,0,"overflow",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"x_valid_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("MAC", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->pushPrefix("unnamedblk2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+105,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("store_values", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+86,0,"j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_input__0(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_input__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBus(c+100,0,"N",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+106,0,"valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+95,0,"data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_output__0(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_init_sub__TOP__vga_face_tb__DOT__uut__DOT__pixel_output__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBus(c+100,0,"N",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+87,0,"valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+12,0,"ready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+14,0,"data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 29,0);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_init_top(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_init_top\n"); );
    // Body
    Vvga_face_tb___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vvga_face_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vvga_face_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vvga_face_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vvga_face_tb___024root__trace_register(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vvga_face_tb___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vvga_face_tb___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vvga_face_tb___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vvga_face_tb___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_const_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vvga_face_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_const_0\n"); );
    // Init
    Vvga_face_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vvga_face_tb___024root*>(voidSelf);
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vvga_face_tb___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_const_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+96,(vlSelf->vga_face_tb__DOT__data),30);
    bufp->fullIData(oldp+97,(0x14U),32);
    bufp->fullIData(oldp+98,(0x12c00U),32);
    bufp->fullIData(oldp+99,(3U),32);
    bufp->fullIData(oldp+100,(0x1eU),32);
    bufp->fullIData(oldp+101,(0U),32);
    bufp->fullIData(oldp+102,(9U),32);
    bufp->fullBit(oldp+103,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__i));
    bufp->fullBit(oldp+104,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__overflow));
    bufp->fullIData(oldp+105,(9U),32);
    bufp->fullBit(oldp+106,(1U));
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_full_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vvga_face_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_full_0\n"); );
    // Init
    Vvga_face_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vvga_face_tb___024root*>(voidSelf);
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vvga_face_tb___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_full_0_sub_0(Vvga_face_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullIData(oldp+1,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[0]),30);
    bufp->fullIData(oldp+2,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[1]),30);
    bufp->fullIData(oldp+3,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[2]),30);
    bufp->fullIData(oldp+4,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[3]),30);
    bufp->fullIData(oldp+5,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[4]),30);
    bufp->fullIData(oldp+6,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[5]),30);
    bufp->fullIData(oldp+7,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[6]),30);
    bufp->fullIData(oldp+8,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[7]),30);
    bufp->fullIData(oldp+9,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[8]),30);
    bufp->fullBit(oldp+10,((0U == vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)));
    bufp->fullBit(oldp+11,((0x12bffU == vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)));
    bufp->fullBit(oldp+12,(vlSelf->vga_face_tb__DOT__ready));
    bufp->fullBit(oldp+13,((1U & vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.data)));
    bufp->fullIData(oldp+14,(vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.data),30);
    bufp->fullIData(oldp+15,(vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index),18);
    bufp->fullCData(oldp+16,(vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q),3);
    bufp->fullCData(oldp+17,(vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q),3);
    bufp->fullCData(oldp+18,(vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q),3);
    bufp->fullIData(oldp+19,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter),20);
    bufp->fullBit(oldp+20,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready));
    bufp->fullIData(oldp+21,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                             [0U]),30);
    bufp->fullQData(oldp+22,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[0]),60);
    bufp->fullQData(oldp+24,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[1]),60);
    bufp->fullQData(oldp+26,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[2]),60);
    bufp->fullQData(oldp+28,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[3]),60);
    bufp->fullQData(oldp+30,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[4]),60);
    bufp->fullQData(oldp+32,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[5]),60);
    bufp->fullQData(oldp+34,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[6]),60);
    bufp->fullQData(oldp+36,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[7]),60);
    bufp->fullQData(oldp+38,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[8]),60);
    bufp->fullQData(oldp+40,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[0]),60);
    bufp->fullQData(oldp+42,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[1]),60);
    bufp->fullQData(oldp+44,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[2]),60);
    bufp->fullQData(oldp+46,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[3]),60);
    bufp->fullQData(oldp+48,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[4]),60);
    bufp->fullQData(oldp+50,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[5]),60);
    bufp->fullQData(oldp+52,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[6]),60);
    bufp->fullQData(oldp+54,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[7]),60);
    bufp->fullQData(oldp+56,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[8]),60);
    bufp->fullQData(oldp+58,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[0]),60);
    bufp->fullQData(oldp+60,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[1]),60);
    bufp->fullQData(oldp+62,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[2]),60);
    bufp->fullQData(oldp+64,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[3]),60);
    bufp->fullQData(oldp+66,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[4]),60);
    bufp->fullQData(oldp+68,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[5]),60);
    bufp->fullQData(oldp+70,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[6]),60);
    bufp->fullQData(oldp+72,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[7]),60);
    bufp->fullQData(oldp+74,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[8]),60);
    bufp->fullWData(oldp+76,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red),65);
    bufp->fullWData(oldp+79,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green),65);
    bufp->fullWData(oldp+82,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue),65);
    bufp->fullBit(oldp+85,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q));
    bufp->fullIData(oldp+86,(vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__store_values__DOT__unnamedblk1__DOT__j),32);
    bufp->fullBit(oldp+87,(vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.valid));
    bufp->fullBit(oldp+88,(vlSelf->vga_face_tb__DOT__clk));
    bufp->fullBit(oldp+89,(vlSelf->vga_face_tb__DOT__reset));
    bufp->fullCData(oldp+90,(vlSelf->vga_face_tb__DOT__face_select),2);
    bufp->fullBit(oldp+91,((1U & (~ (IData)(vlSelf->vga_face_tb__DOT__reset)))));
    bufp->fullIData(oldp+92,(vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next),18);
    bufp->fullBit(oldp+93,(vlSelf->vga_face_tb__DOT__uut__DOT__read_enable));
    bufp->fullCData(oldp+94,(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel),3);
    bufp->fullIData(oldp+95,(((0x3fc00000U & ((- (IData)(
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
