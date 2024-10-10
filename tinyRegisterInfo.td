//Register class for TinyGpu
// include "/media/diwakar/Data/llvm/llvm-project_old/llvm/include/llvm/Target/Target.td"
let Namespace = "TINY" in {
class TinyReg<bits<4> Enc, string n, 
    list<string> alt= []> : Register<n>{
        let HWEncoding{3-0} = Enc;
        let AltNames = alt;
    }
} // end Namespace


//TODO: Try to implement with loops
//Registers
def R0 : TinyReg<0, "r0", DwarfRegNum<[0]>>;


