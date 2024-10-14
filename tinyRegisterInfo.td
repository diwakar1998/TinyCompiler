//Register class for TinyGpu
// include "./Target.td"
include "/media/diwakar/Data/llvm/llvm-project_old/llvm/include/llvm/Target/Target.td"
let Namespace = "TINY" in {
class TinyReg<bits<4> Enc, string n, 
    list<string> alt= []> : Register<n>{ //------Try to figure out include errors-----
        let HWEncoding{3-0} = Enc;  //Specifies which register is being accessed
        let AltNames = alt;
    }
} // end Namespace
//TODO: Try to implement with loops
//Registers
foreach i = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] in {
    def R#i : TinyReg<i, !strconcat("r",!cast<string>(i)), DwarfRegNum<[i]>>;
}
