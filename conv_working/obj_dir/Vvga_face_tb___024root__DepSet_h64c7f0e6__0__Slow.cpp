// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb___024root.h"

VL_ATTR_COLD void Vvga_face_tb___024root___eval_static__TOP(Vvga_face_tb___024root* vlSelf);

VL_ATTR_COLD void Vvga_face_tb___024root___eval_static(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_static\n"); );
    // Body
    Vvga_face_tb___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vvga_face_tb___024root___eval_static__TOP(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->vga_face_tb__DOT__ready = 0U;
    vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index = 0U;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[0U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[1U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[2U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[3U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[4U] = 0x3ffffff8U;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[5U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[6U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[7U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[8U] = 0x3fffffffU;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready = 0U;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q = 0U;
}

VL_ATTR_COLD void Vvga_face_tb___024root___eval_initial__TOP(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_initial__TOP\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_1;
    VlWide<3>/*95:0*/ __Vtemp_2;
    VlWide<3>/*95:0*/ __Vtemp_3;
    // Body
    __Vtemp_1[0U] = 0x2e686578U;
    __Vtemp_1[1U] = 0x61707079U;
    __Vtemp_1[2U] = 0x68U;
    VL_READMEM_N(true, 3, 76800, 0, VL_CVT_PACK_STR_NW(3, __Vtemp_1)
                 ,  &(vlSelf->vga_face_tb__DOT__uut__DOT__happy_face)
                 , 0, ~0ULL);
    __Vtemp_2[0U] = 0x2e686578U;
    __Vtemp_2[1U] = 0x7472616cU;
    __Vtemp_2[2U] = 0x6e6575U;
    VL_READMEM_N(true, 3, 76800, 0, VL_CVT_PACK_STR_NW(3, __Vtemp_2)
                 ,  &(vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face)
                 , 0, ~0ULL);
    __Vtemp_3[0U] = 0x2e686578U;
    __Vtemp_3[1U] = 0x6e677279U;
    __Vtemp_3[2U] = 0x61U;
    VL_READMEM_N(true, 3, 76800, 0, VL_CVT_PACK_STR_NW(3, __Vtemp_3)
                 ,  &(vlSelf->vga_face_tb__DOT__uut__DOT__angry_face)
                 , 0, ~0ULL);
}

VL_ATTR_COLD void Vvga_face_tb___024root___eval_final(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__stl(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vvga_face_tb___024root___eval_phase__stl(Vvga_face_tb___024root* vlSelf);

VL_ATTR_COLD void Vvga_face_tb___024root___eval_settle(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vvga_face_tb___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("vga_face_tb.sv", 1, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vvga_face_tb___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__stl(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ vlSelf->__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vvga_face_tb___024root___stl_sequent__TOP__0(Vvga_face_tb___024root* vlSelf);

VL_ATTR_COLD void Vvga_face_tb___024root___eval_stl(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vvga_face_tb___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vvga_face_tb___024root___stl_sequent__TOP__0(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___stl_sequent__TOP__0\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_2;
    VlWide<3>/*95:0*/ __Vtemp_5;
    VlWide<3>/*95:0*/ __Vtemp_6;
    VlWide<3>/*95:0*/ __Vtemp_9;
    VlWide<3>/*95:0*/ __Vtemp_10;
    VlWide<3>/*95:0*/ __Vtemp_13;
    VlWide<3>/*95:0*/ __Vtemp_14;
    VlWide<3>/*95:0*/ __Vtemp_17;
    VlWide<3>/*95:0*/ __Vtemp_18;
    VlWide<3>/*95:0*/ __Vtemp_21;
    VlWide<3>/*95:0*/ __Vtemp_22;
    VlWide<3>/*95:0*/ __Vtemp_25;
    VlWide<3>/*95:0*/ __Vtemp_26;
    VlWide<3>/*95:0*/ __Vtemp_29;
    VlWide<3>/*95:0*/ __Vtemp_30;
    VlWide<3>/*95:0*/ __Vtemp_33;
    VlWide<3>/*95:0*/ __Vtemp_34;
    VlWide<3>/*95:0*/ __Vtemp_36;
    VlWide<3>/*95:0*/ __Vtemp_39;
    VlWide<3>/*95:0*/ __Vtemp_40;
    VlWide<3>/*95:0*/ __Vtemp_43;
    VlWide<3>/*95:0*/ __Vtemp_44;
    VlWide<3>/*95:0*/ __Vtemp_47;
    VlWide<3>/*95:0*/ __Vtemp_48;
    VlWide<3>/*95:0*/ __Vtemp_51;
    VlWide<3>/*95:0*/ __Vtemp_52;
    VlWide<3>/*95:0*/ __Vtemp_55;
    VlWide<3>/*95:0*/ __Vtemp_56;
    VlWide<3>/*95:0*/ __Vtemp_59;
    VlWide<3>/*95:0*/ __Vtemp_60;
    VlWide<3>/*95:0*/ __Vtemp_63;
    VlWide<3>/*95:0*/ __Vtemp_64;
    VlWide<3>/*95:0*/ __Vtemp_67;
    VlWide<3>/*95:0*/ __Vtemp_68;
    VlWide<3>/*95:0*/ __Vtemp_70;
    VlWide<3>/*95:0*/ __Vtemp_73;
    VlWide<3>/*95:0*/ __Vtemp_74;
    VlWide<3>/*95:0*/ __Vtemp_77;
    VlWide<3>/*95:0*/ __Vtemp_78;
    VlWide<3>/*95:0*/ __Vtemp_81;
    VlWide<3>/*95:0*/ __Vtemp_82;
    VlWide<3>/*95:0*/ __Vtemp_85;
    VlWide<3>/*95:0*/ __Vtemp_86;
    VlWide<3>/*95:0*/ __Vtemp_89;
    VlWide<3>/*95:0*/ __Vtemp_90;
    VlWide<3>/*95:0*/ __Vtemp_93;
    VlWide<3>/*95:0*/ __Vtemp_94;
    VlWide<3>/*95:0*/ __Vtemp_97;
    VlWide<3>/*95:0*/ __Vtemp_98;
    VlWide<3>/*95:0*/ __Vtemp_101;
    VlWide<3>/*95:0*/ __Vtemp_102;
    // Body
    vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next 
        = ((IData)(vlSelf->vga_face_tb__DOT__reset)
            ? 0U : ((0x12bffU > vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)
                     ? (0x3ffffU & ((IData)(1U) + vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index))
                     : 0U));
    vlSelf->vga_face_tb__DOT__uut__DOT__read_enable 
        = ((IData)(vlSelf->vga_face_tb__DOT__reset) 
           | (IData)(vlSelf->vga_face_tb__DOT__ready));
    if ((0U == (IData)(vlSelf->vga_face_tb__DOT__face_select))) {
        vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel 
            = vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q;
    } else if ((1U == (IData)(vlSelf->vga_face_tb__DOT__face_select))) {
        vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel 
            = vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q;
    } else if ((2U == (IData)(vlSelf->vga_face_tb__DOT__face_select))) {
        vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel 
            = vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q;
    }
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[0U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [0U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[1U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [1U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [1U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[2U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [2U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [2U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[3U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x14U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [3U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[4U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x15U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [4U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[5U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x16U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [5U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[6U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x28U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [6U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[7U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x29U] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [7U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[8U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x2aU] 
                                                       >> 0x16U)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [8U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[0U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [0U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[1U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [1U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [1U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[2U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [2U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [2U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[3U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x14U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [3U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[4U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x15U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [4U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[5U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x16U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [5U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[6U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x28U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [6U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[7U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x29U] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [7U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[8U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0xffU 
                                                    & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                       [0x2aU] 
                                                       >> 0xcU)))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [8U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[0U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [0U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[1U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [1U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [1U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[2U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [2U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [2U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[3U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x14U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [3U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[4U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x15U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [4U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[5U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x16U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [5U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[6U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x28U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [6U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[7U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x29U]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [7U]))));
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[8U] 
        = (0xfffffffffffffffULL & ((QData)((IData)(
                                                   (0x3ffU 
                                                    & vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
                                                    [0x2aU]))) 
                                   * (QData)((IData)(
                                                     vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h
                                                     [8U]))));
    VL_EXTENDS_WQ(65,60, __Vtemp_2, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [0U]);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_2[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_2[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_2[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_5, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [1U]);
    VL_ADD_W(3, __Vtemp_6, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_5);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_6[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_6[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_6[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_9, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [2U]);
    VL_ADD_W(3, __Vtemp_10, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_9);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_10[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_10[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_10[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_13, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [3U]);
    VL_ADD_W(3, __Vtemp_14, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_13);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_14[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_14[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_14[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_17, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [4U]);
    VL_ADD_W(3, __Vtemp_18, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_17);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_18[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_18[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_18[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_21, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [5U]);
    VL_ADD_W(3, __Vtemp_22, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_21);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_22[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_22[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_22[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_25, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [6U]);
    VL_ADD_W(3, __Vtemp_26, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_25);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_26[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_26[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_26[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_29, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [7U]);
    VL_ADD_W(3, __Vtemp_30, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_29);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_30[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_30[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_30[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_33, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red
                  [8U]);
    VL_ADD_W(3, __Vtemp_34, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red, __Vtemp_33);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[0U] 
        = __Vtemp_34[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[1U] 
        = __Vtemp_34[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red[2U] 
        = (1U & __Vtemp_34[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_36, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [0U]);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_36[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_36[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_36[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_39, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [1U]);
    VL_ADD_W(3, __Vtemp_40, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_39);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_40[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_40[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_40[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_43, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [2U]);
    VL_ADD_W(3, __Vtemp_44, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_43);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_44[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_44[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_44[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_47, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [3U]);
    VL_ADD_W(3, __Vtemp_48, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_47);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_48[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_48[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_48[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_51, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [4U]);
    VL_ADD_W(3, __Vtemp_52, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_51);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_52[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_52[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_52[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_55, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [5U]);
    VL_ADD_W(3, __Vtemp_56, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_55);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_56[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_56[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_56[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_59, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [6U]);
    VL_ADD_W(3, __Vtemp_60, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_59);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_60[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_60[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_60[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_63, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [7U]);
    VL_ADD_W(3, __Vtemp_64, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_63);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_64[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_64[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_64[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_67, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green
                  [8U]);
    VL_ADD_W(3, __Vtemp_68, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green, __Vtemp_67);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[0U] 
        = __Vtemp_68[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[1U] 
        = __Vtemp_68[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green[2U] 
        = (1U & __Vtemp_68[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_70, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [0U]);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_70[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_70[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_70[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_73, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [1U]);
    VL_ADD_W(3, __Vtemp_74, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_73);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_74[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_74[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_74[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_77, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [2U]);
    VL_ADD_W(3, __Vtemp_78, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_77);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_78[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_78[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_78[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_81, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [3U]);
    VL_ADD_W(3, __Vtemp_82, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_81);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_82[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_82[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_82[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_85, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [4U]);
    VL_ADD_W(3, __Vtemp_86, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_85);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_86[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_86[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_86[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_89, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [5U]);
    VL_ADD_W(3, __Vtemp_90, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_89);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_90[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_90[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_90[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_93, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [6U]);
    VL_ADD_W(3, __Vtemp_94, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_93);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_94[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_94[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_94[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_97, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [7U]);
    VL_ADD_W(3, __Vtemp_98, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_97);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_98[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_98[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_98[2U]);
    VL_EXTENDS_WQ(65,60, __Vtemp_101, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue
                  [8U]);
    VL_ADD_W(3, __Vtemp_102, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue, __Vtemp_101);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
        = __Vtemp_102[0U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[1U] 
        = __Vtemp_102[1U];
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[2U] 
        = (1U & __Vtemp_102[2U]);
}

VL_ATTR_COLD void Vvga_face_tb___024root___eval_triggers__stl(Vvga_face_tb___024root* vlSelf);

VL_ATTR_COLD bool Vvga_face_tb___024root___eval_phase__stl(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vvga_face_tb___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vvga_face_tb___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__act(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ vlSelf->__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge vga_face_tb.clk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__nba(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ vlSelf->__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge vga_face_tb.clk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vvga_face_tb___024root___ctor_var_reset(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->vga_face_tb__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__reset = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__face_select = VL_RAND_RESET_I(2);
    vlSelf->vga_face_tb__DOT__data = VL_RAND_RESET_I(30);
    vlSelf->vga_face_tb__DOT__ready = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 76800; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__happy_face[__Vi0] = VL_RAND_RESET_I(3);
    }
    for (int __Vi0 = 0; __Vi0 < 76800; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face[__Vi0] = VL_RAND_RESET_I(3);
    }
    for (int __Vi0 = 0; __Vi0 < 76800; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__angry_face[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index = VL_RAND_RESET_I(18);
    vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next = VL_RAND_RESET_I(18);
    vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q = VL_RAND_RESET_I(3);
    vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q = VL_RAND_RESET_I(3);
    vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q = VL_RAND_RESET_I(3);
    vlSelf->vga_face_tb__DOT__uut__DOT__read_enable = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel = VL_RAND_RESET_I(3);
    for (int __Vi0 = 0; __Vi0 < 9; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__h[__Vi0] = VL_RAND_RESET_I(30);
    }
    for (int __Vi0 = 0; __Vi0 < 44; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[__Vi0] = VL_RAND_RESET_I(30);
    }
    for (int __Vi0 = 0; __Vi0 < 44; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[__Vi0] = VL_RAND_RESET_I(30);
    }
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter = VL_RAND_RESET_I(20);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 9; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_red[__Vi0] = VL_RAND_RESET_Q(60);
    }
    for (int __Vi0 = 0; __Vi0 < 9; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_green[__Vi0] = VL_RAND_RESET_Q(60);
    }
    for (int __Vi0 = 0; __Vi0 < 9; ++__Vi0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__mult_result_blue[__Vi0] = VL_RAND_RESET_Q(60);
    }
    VL_RAND_RESET_W(65, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_red);
    VL_RAND_RESET_W(65, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_green);
    VL_RAND_RESET_W(65, vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__i = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__overflow = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q = VL_RAND_RESET_I(1);
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__store_values__DOT__unnamedblk1__DOT__j = 0;
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 = VL_RAND_RESET_I(30);
    vlSelf->__Vtrigprevexpr___TOP__vga_face_tb__DOT__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
