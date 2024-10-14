


class regTest<bits<4> Enc,string n,int dwarfNum>{
    bits<4> enc = Enc;
    string regstring = n;
    int dwarf = dwarfNum;
}


// foreach i = reg_start
  foreach i = [0,1,2,3,4,5,15] in {
    def R#i : regTest<i,"r#i",i>;
  }

