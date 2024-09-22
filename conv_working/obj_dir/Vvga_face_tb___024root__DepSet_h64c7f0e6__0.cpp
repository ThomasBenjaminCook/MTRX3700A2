// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb___024root.h"

VL_ATTR_COLD void Vvga_face_tb___024root___eval_initial__TOP(Vvga_face_tb___024root* vlSelf);
VlCoroutine Vvga_face_tb___024root___eval_initial__TOP__Vtiming__0(Vvga_face_tb___024root* vlSelf);
VlCoroutine Vvga_face_tb___024root___eval_initial__TOP__Vtiming__1(Vvga_face_tb___024root* vlSelf);

void Vvga_face_tb___024root___eval_initial(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_initial\n"); );
    // Body
    Vvga_face_tb___024root___eval_initial__TOP(vlSelf);
    Vvga_face_tb___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vvga_face_tb___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__vga_face_tb__DOT__clk__0 
        = vlSelf->vga_face_tb__DOT__clk;
}

VL_INLINE_OPT VlCoroutine Vvga_face_tb___024root___eval_initial__TOP__Vtiming__0(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    vlSelf->vga_face_tb__DOT__clk = 0U;
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0xaULL, 
                                           nullptr, 
                                           "vga_face_tb.sv", 
                                           29);
        vlSelf->vga_face_tb__DOT__clk = (1U & (~ (IData)(vlSelf->vga_face_tb__DOT__clk)));
    }
}

void Vvga_face_tb___024root___act_sequent__TOP__0(Vvga_face_tb___024root* vlSelf);

void Vvga_face_tb___024root___eval_act(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_act\n"); );
    // Body
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        Vvga_face_tb___024root___act_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vvga_face_tb___024root___act_sequent__TOP__0(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___act_sequent__TOP__0\n"); );
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
}

void Vvga_face_tb___024root___nba_sequent__TOP__0(Vvga_face_tb___024root* vlSelf);
void Vvga_face_tb___024root___nba_comb__TOP__0(Vvga_face_tb___024root* vlSelf);

void Vvga_face_tb___024root___eval_nba(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vvga_face_tb___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    if ((3ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vvga_face_tb___024root___nba_comb__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vvga_face_tb___024root___nba_comb__TOP__0(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___nba_comb__TOP__0\n"); );
    // Body
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
    vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index_next 
        = ((IData)(vlSelf->vga_face_tb__DOT__reset)
            ? 0U : ((0x12bffU > vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index)
                     ? (0x3ffffU & ((IData)(1U) + vlSelf->vga_face_tb__DOT__uut__DOT__pixel_index))
                     : 0U));
    vlSelf->vga_face_tb__DOT__uut__DOT__read_enable 
        = ((IData)(vlSelf->vga_face_tb__DOT__reset) 
           | (IData)(vlSelf->vga_face_tb__DOT__ready));
}

void Vvga_face_tb___024root___timing_resume(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___timing_resume\n"); );
    // Body
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vvga_face_tb___024root___eval_triggers__act(Vvga_face_tb___024root* vlSelf);

bool Vvga_face_tb___024root___eval_phase__act(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vvga_face_tb___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vvga_face_tb___024root___timing_resume(vlSelf);
        Vvga_face_tb___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vvga_face_tb___024root___eval_phase__nba(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vvga_face_tb___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__nba(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__act(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vvga_face_tb___024root___eval(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vvga_face_tb___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("vga_face_tb.sv", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vvga_face_tb___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("vga_face_tb.sv", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vvga_face_tb___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vvga_face_tb___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vvga_face_tb___024root___eval_debug_assertions(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
