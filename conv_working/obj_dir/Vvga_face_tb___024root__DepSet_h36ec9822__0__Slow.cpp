// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb__Syms.h"
#include "Vvga_face_tb___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vvga_face_tb___024root___dump_triggers__stl(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vvga_face_tb___024root___eval_triggers__stl(Vvga_face_tb___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vvga_face_tb___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vvga_face_tb___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
