// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vvga_face_tb.h for the primary calling header

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb_dstream.h"

std::string VL_TO_STRING(const Vvga_face_tb_dstream* obj) {
    VL_DEBUG_IF(VL_DBG_MSGF("+            Vvga_face_tb_dstream::VL_TO_STRING\n"); );
    // Body
    return (obj ? obj->name() : "null");
}
