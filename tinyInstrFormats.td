//Class for opcodes for tinyGPU
class TinyOpcode<bits <4> Code>{
    bits<4> opCode = Code;
}

//defining opcodes for various instructions
//PC = PC + 1
def opCodeNOP: TinyOpcode<0b0000>;

//Arithmetic Instructions
def opCodeADD: TinyOpcode<0b0011>;
def opCodeSUB: TinyOpcode<0b0100>;

//Load Instructions
def opCodeCONST: TinyOpcode<0b1001>;

//Return Instruction
def opCodeRET: TinyOpcode<0b1111>;

//Class of TinyGPU's Instruction 
//Extends Instruction class present in llvm/include/Target.td and provides values to some fields
class TinyIns<dag outs, dag ins,TinyOpcode opCode, string opcodestr, string argstr,
    list<dag> pattern> : Instruction {
    //Main Instruction
    field bits<16> Inst;

    //Tablegen expects this field to exist or it fails
    field bits<16> SoftFail = 0;

    let Inst{15-12} = opCode;
    let Namespace = "TINY";

    dag OutOperandList = outs;
    dag InOperandList = ins;

    let AsmString = opcodestr # "\t" # argstr;

    let Pattern = pattern;
}



