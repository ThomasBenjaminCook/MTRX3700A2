// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vvga_face_tb__pch.h"
#include "Vvga_face_tb.h"
#include "Vvga_face_tb___024root.h"
#include "Vvga_face_tb_dstream.h"

// FUNCTIONS
Vvga_face_tb__Syms::~Vvga_face_tb__Syms()
{
#ifdef VM_TRACE
    if (__Vm_dumping) _traceDumpClose();
#endif  // VM_TRACE
}

void Vvga_face_tb__Syms::_traceDump() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    __Vm_dumperp->dump(VL_TIME_Q());
}

void Vvga_face_tb__Syms::_traceDumpOpen() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    if (VL_UNLIKELY(!__Vm_dumperp)) {
        __Vm_dumperp = new VerilatedVcdC();
        __Vm_modelp->trace(__Vm_dumperp, 0, 0);
        std::string dumpfile = _vm_contextp__->dumpfileCheck();
        __Vm_dumperp->open(dumpfile.c_str());
        __Vm_dumping = true;
    }
}

void Vvga_face_tb__Syms::_traceDumpClose() {
    const VerilatedLockGuard lock(__Vm_dumperMutex);
    __Vm_dumping = false;
    VL_DO_CLEAR(delete __Vm_dumperp, __Vm_dumperp = nullptr);
}

Vvga_face_tb__Syms::Vvga_face_tb__Syms(VerilatedContext* contextp, const char* namep, Vvga_face_tb* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
    , TOP__vga_face_tb__DOT__uut__DOT__pixel_output{this, Verilated::catName(namep, "vga_face_tb.uut.pixel_output")}
{
        // Check resources
        Verilated::stackCheck(2886);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-9);
    // Setup each module's pointers to their submodules
    TOP.__PVT__vga_face_tb__DOT__uut__DOT__pixel_output = &TOP__vga_face_tb__DOT__uut__DOT__pixel_output;
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
    TOP__vga_face_tb__DOT__uut__DOT__pixel_output.__Vconfigure(true);
}
