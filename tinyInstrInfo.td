class TinyIns<bits <4> OpCode, bits<4> Rd=0, bits<4> Rs=1, bits<4> Rt=2> {
    bits<16> insEncoding;
    let insEncoding{3-0} = Rt;
    let insEncoding{7-4} = Rs;
    let insEncoding{11-8} = Rd;
    let insEncoding{15-12} = OpCode;
}

def TinyADD: TinyIns<0x03>;
def TinySUB: TinyIns<0x04>;