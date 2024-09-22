// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vvga_face_tb.h for the primary calling header

#ifndef VERILATED_VVGA_FACE_TB_DSTREAM_H_
#define VERILATED_VVGA_FACE_TB_DSTREAM_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vvga_face_tb__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vvga_face_tb_dstream final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ valid;
    IData/*29:0*/ data;

    // INTERNAL VARIABLES
    Vvga_face_tb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vvga_face_tb_dstream(Vvga_face_tb__Syms* symsp, const char* v__name);
    ~Vvga_face_tb_dstream();
    VL_UNCOPYABLE(Vvga_face_tb_dstream);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};

std::string VL_TO_STRING(const Vvga_face_tb_dstream* obj);

#endif  // guard
