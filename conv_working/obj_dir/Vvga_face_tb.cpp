// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vvga_face_tb__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vvga_face_tb::Vvga_face_tb(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vvga_face_tb__Syms(contextp(), _vcname__, this)}
    , __PVT__vga_face_tb__DOT__uut__DOT__pixel_input{vlSymsp->TOP.__PVT__vga_face_tb__DOT__uut__DOT__pixel_input}
    , __PVT__vga_face_tb__DOT__uut__DOT__pixel_output{vlSymsp->TOP.__PVT__vga_face_tb__DOT__uut__DOT__pixel_output}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    contextp()->traceBaseModelCbAdd(
        [this](VerilatedTraceBaseC* tfp, int levels, int options) { traceBaseModel(tfp, levels, options); });
}

Vvga_face_tb::Vvga_face_tb(const char* _vcname__)
    : Vvga_face_tb(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vvga_face_tb::~Vvga_face_tb() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vvga_face_tb___024root___eval_debug_assertions(Vvga_face_tb___024root* vlSelf);
#endif  // VL_DEBUG
void Vvga_face_tb___024root___eval_static(Vvga_face_tb___024root* vlSelf);
void Vvga_face_tb___024root___eval_initial(Vvga_face_tb___024root* vlSelf);
void Vvga_face_tb___024root___eval_settle(Vvga_face_tb___024root* vlSelf);
void Vvga_face_tb___024root___eval(Vvga_face_tb___024root* vlSelf);

void Vvga_face_tb::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vvga_face_tb::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vvga_face_tb___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vvga_face_tb___024root___eval_static(&(vlSymsp->TOP));
        Vvga_face_tb___024root___eval_initial(&(vlSymsp->TOP));
        Vvga_face_tb___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vvga_face_tb___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

void Vvga_face_tb::eval_end_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+eval_end_step Vvga_face_tb::eval_end_step\n"); );
#ifdef VM_TRACE
    // Tracing
    if (VL_UNLIKELY(vlSymsp->__Vm_dumping)) vlSymsp->_traceDump();
#endif  // VM_TRACE
}

//============================================================
// Events and timing
bool Vvga_face_tb::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t Vvga_face_tb::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

const char* Vvga_face_tb::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vvga_face_tb___024root___eval_final(Vvga_face_tb___024root* vlSelf);

VL_ATTR_COLD void Vvga_face_tb::final() {
    Vvga_face_tb___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vvga_face_tb::hierName() const { return vlSymsp->name(); }
const char* Vvga_face_tb::modelName() const { return "Vvga_face_tb"; }
unsigned Vvga_face_tb::threads() const { return 1; }
void Vvga_face_tb::prepareClone() const { contextp()->prepareClone(); }
void Vvga_face_tb::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vvga_face_tb::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vvga_face_tb___024root__trace_decl_types(VerilatedVcd* tracep);

void Vvga_face_tb___024root__trace_init_top(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vvga_face_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vvga_face_tb___024root*>(voidSelf);
    Vvga_face_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vvga_face_tb___024root__trace_decl_types(tracep);
    Vvga_face_tb___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vvga_face_tb___024root__trace_register(Vvga_face_tb___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vvga_face_tb::traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options) {
    (void)levels; (void)options;
    VerilatedVcdC* const stfp = dynamic_cast<VerilatedVcdC*>(tfp);
    if (VL_UNLIKELY(!stfp)) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vvga_face_tb::trace()' called on non-VerilatedVcdC object;"
            " use --trace-fst with VerilatedFst object, and --trace with VerilatedVcd object");
    }
    stfp->spTrace()->addModel(this);
    stfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vvga_face_tb___024root__trace_register(&(vlSymsp->TOP), stfp->spTrace());
}
