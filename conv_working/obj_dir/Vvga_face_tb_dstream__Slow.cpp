// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb__Syms.h"
#include "Vvga_face_tb_dstream.h"

void Vvga_face_tb_dstream___ctor_var_reset(Vvga_face_tb_dstream* vlSelf);

Vvga_face_tb_dstream::Vvga_face_tb_dstream(Vvga_face_tb__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vvga_face_tb_dstream___ctor_var_reset(this);
}

void Vvga_face_tb_dstream::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vvga_face_tb_dstream::~Vvga_face_tb_dstream() {
}
