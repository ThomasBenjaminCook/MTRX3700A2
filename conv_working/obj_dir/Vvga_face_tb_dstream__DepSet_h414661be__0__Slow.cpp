// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb_dstream.h"

VL_ATTR_COLD void Vvga_face_tb_dstream___ctor_var_reset(Vvga_face_tb_dstream* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+            Vvga_face_tb_dstream___ctor_var_reset\n"); );
    // Body
    vlSelf->valid = VL_RAND_RESET_I(1);
    vlSelf->data = VL_RAND_RESET_I(30);
}
