// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb__Syms.h"
#include "Vvga_face_tb___024root.h"

void Vvga_face_tb___024root___ctor_var_reset(Vvga_face_tb___024root* vlSelf);

Vvga_face_tb___024root::Vvga_face_tb___024root(Vvga_face_tb__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vvga_face_tb___024root___ctor_var_reset(this);
}

void Vvga_face_tb___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vvga_face_tb___024root::~Vvga_face_tb___024root() {
}
