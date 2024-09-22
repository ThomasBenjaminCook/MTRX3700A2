// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb__Syms.h"
#include "Vvga_face_tb___024root.h"

VL_INLINE_OPT VlCoroutine Vvga_face_tb___024root___eval_initial__TOP__Vtiming__1(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x666f726dU;
    __Vtemp_1[2U] = 0x77617665U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    vlSelf->vga_face_tb__DOT__reset = 1U;
    vlSelf->vga_face_tb__DOT__face_select = 0U;
    co_await vlSelf->__VdlySched.delay(0x14ULL, nullptr, 
                                       "vga_face_tb.sv", 
                                       41);
    vlSelf->vga_face_tb__DOT__reset = 0U;
    co_await vlSelf->__VdlySched.delay(0x4e20ULL, nullptr, 
                                       "vga_face_tb.sv", 
                                       44);
    VL_FINISH_MT("vga_face_tb.sv", 47, "");
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__act(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vvga_face_tb___024root___eval_triggers__act(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->vga_face_tb__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__vga_face_tb__DOT__clk__0))));
    vlSelf->__VactTriggered.set(1U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__Vtrigprevexpr___TOP__vga_face_tb__DOT__clk__0 
        = vlSelf->vga_face_tb__DOT__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vvga_face_tb___024root___dump_triggers__act(vlSelf);
    }
#endif
}

VL_INLINE_OPT void Vvga_face_tb___024root___nba_sequent__TOP__0(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0 = 0;
    CData/*0:0*/ __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0;
    __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v1;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v1 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v2;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v2 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v3;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v3 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v4;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v4 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v5;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v5 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v6;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v6 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v7;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v7 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v8;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v8 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v9;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v9 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v10;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v10 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v11;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v11 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v12;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v12 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v13;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v13 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v14;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v14 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v15;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v15 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v16;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v16 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v17;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v17 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v18;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v18 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v19;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v19 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v20;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v20 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v21;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v21 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v22;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v22 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v23;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v23 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v24;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v24 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v25;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v25 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v26;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v26 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v27;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v27 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v28;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v28 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v29;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v29 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v30;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v30 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v31;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v31 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v32;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v32 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v33;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v33 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v34;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v34 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v35;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v35 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v36;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v36 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v37;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v37 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v38;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v38 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v39;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v39 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v40;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v40 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v41;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v41 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v42;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v42 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v43;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v43 = 0;
    IData/*29:0*/ __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0;
    __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0 = 0;
    CData/*0:0*/ __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0;
    __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0 = 0;
    IData/*19:0*/ __Vdly__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter;
    __Vdly__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter = 0;
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
    __Vdly__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter 
        = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter;
    __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0 = 0U;
    if (VL_UNLIKELY(((~ (IData)(vlSelf->vga_face_tb__DOT__reset)) 
                     & (IData)(vlSelf->vga_face_tb__DOT__ready)))) {
        VL_WRITEF_NX("Received pixel: pixel_index =%6#, face_select = %1#, data = %b\n",0,
                     18,vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index,
                     2,(IData)(vlSelf->vga_face_tb__DOT__face_select),
                     30,vlSelf->vga_face_tb__DOT__data);
    }
    __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0 = 0U;
    if (vlSelf->vga_face_tb__DOT__ready) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__store_values__DOT__unnamedblk1__DOT__j = 0x2bU;
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0 
            = ((0x3fc00000U & ((- (IData)((1U & ((IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel) 
                                                 >> 2U)))) 
                               << 0x16U)) | ((0xff000U 
                                              & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel) 
                                                                >> 1U)))) 
                                                 << 0xcU)) 
                                             | (0x3fcU 
                                                & ((- (IData)(
                                                              (1U 
                                                               & (IData)(vlSelf->vga_face_tb__DOT__uut__DOT__current_pixel)))) 
                                                   << 2U))));
        __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0 = 1U;
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0U];
        __Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0 = 1U;
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v1 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [1U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v2 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [2U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v3 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [3U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v4 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [4U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v5 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [5U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v6 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [6U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v7 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [7U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v8 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [8U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v9 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [9U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v10 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xaU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v11 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xbU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v12 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xcU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v13 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xdU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v14 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xeU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v15 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0xfU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v16 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x10U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v17 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x11U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v18 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x12U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v19 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x13U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v20 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x14U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v21 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x15U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v22 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x16U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v23 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x17U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v24 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x18U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v25 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x19U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v26 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1aU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v27 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1bU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v28 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1cU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v29 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1dU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v30 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1eU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v31 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x1fU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v32 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x20U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v33 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x21U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v34 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x22U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v35 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x23U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v36 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x24U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v37 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x25U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v38 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x26U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v39 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x27U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v40 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x28U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v41 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x29U];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v42 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x2aU];
        __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v43 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer
            [0x2bU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[1U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [1U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[2U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [2U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[3U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [3U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[4U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [4U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[5U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [5U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[6U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [6U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[7U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [7U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[8U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [8U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[9U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [9U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xaU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xaU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xbU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xbU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xcU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xcU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xdU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xdU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xeU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xeU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0xfU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0xfU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x10U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x10U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x11U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x11U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x12U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x12U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x13U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x13U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x14U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x14U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x15U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x15U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x16U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x16U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x17U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x17U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x18U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x18U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x19U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x19U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1aU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1aU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1bU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1bU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1cU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1cU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1dU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1dU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1eU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1eU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x1fU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x1fU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x20U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x20U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x21U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x21U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x22U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x22U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x23U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x23U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x24U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x24U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x25U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x25U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x26U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x26U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x27U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x27U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x28U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x28U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x29U] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x29U];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x2aU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old
            [0x2aU];
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0x2bU] 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT____Vlvbound_h02ae6154__0;
        vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.data 
            = (0x3ffffffcU & (vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__macc_blue[0U] 
                              << 2U));
        __Vdly__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter 
            = (0xfffffU & ((IData)(1U) + vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter));
        if (((0x2bU <= vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter) 
             & (0x18fU >= vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter))) {
            vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__conv_ready = 1U;
        }
        vlSymsp->TOP__vga_face_tb__DOT__uut__DOT__pixel_output.valid 
            = vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__x_valid_q = 1U;
    }
    if (vlSelf->vga_face_tb__DOT__uut__DOT__read_enable) {
        if ((0x12bffU >= (0x1ffffU & vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next))) {
            vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q 
                = vlSelf->vga_face_tb__DOT__uut__DOT__angry_face
                [(0x1ffffU & vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next)];
            vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q 
                = vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face
                [(0x1ffffU & vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next)];
            vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q 
                = vlSelf->vga_face_tb__DOT__uut__DOT__happy_face
                [(0x1ffffU & vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next)];
        } else {
            vlSelf->vga_face_tb__DOT__uut__DOT__angry_face_q = 0U;
            vlSelf->vga_face_tb__DOT__uut__DOT__neutral_face_q = 0U;
            vlSelf->vga_face_tb__DOT__uut__DOT__happy_face_q = 0U;
        }
    }
    if (vlSelf->vga_face_tb__DOT__reset) {
        vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index = 0U;
    } else if (((~ (IData)(vlSelf->vga_face_tb__DOT__reset)) 
                & (IData)(vlSelf->vga_face_tb__DOT__ready))) {
        vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index 
            = vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next;
    }
    if (__Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer[0U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer__v0;
    }
    if (__Vdlyvset__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0) {
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v0;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[1U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v1;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[2U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v2;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[3U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v3;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[4U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v4;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[5U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v5;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[6U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v6;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[7U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v7;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[8U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v8;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[9U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v9;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xaU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v10;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xbU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v11;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xcU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v12;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xdU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v13;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xeU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v14;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0xfU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v15;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x10U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v16;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x11U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v17;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x12U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v18;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x13U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v19;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x14U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v20;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x15U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v21;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x16U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v22;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x17U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v23;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x18U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v24;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x19U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v25;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1aU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v26;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1bU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v27;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1cU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v28;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1dU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v29;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1eU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v30;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x1fU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v31;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x20U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v32;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x21U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v33;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x22U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v34;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x23U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v35;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x24U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v36;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x25U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v37;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x26U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v38;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x27U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v39;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x28U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v40;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x29U] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v41;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x2aU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v42;
        vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old[0x2bU] 
            = __Vdlyvval__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__input_buffer_old__v43;
    }
    vlSelf->vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter 
        = __Vdly__vga_face_tb__DOT__uut__DOT__u_edge_conv__DOT__counter;
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
    vlSelf->vga_face_tb__DOT__ready = (2U <= (7U & 
                                              VL_RANDOM_I()));
}
