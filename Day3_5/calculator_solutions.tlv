
// final copy of the Calculator
\m4_TLV_version 1d: tl-x.org
\SV

   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   |calc
      @0
         $reset = *reset;
      @1
         $val1[31:0] = >>2$out[31:0] ;
         $val2[31:0] = $rand2[3:0] ;
         $valid = $reset ? 32'h0 : (1 + >>1$valid);
         $sum[31:0] = $val1[31:0] + $val2[31:0];
         $diff[31:0] = $val1[31:0] - $val2[31:0];
         $mul[31:0] = $val1[31:0] * $val2[31:0];
         $quo[31:0] = $val1[31:0] / $val2[31:0];
      @2
         ?$valid
            $out[31:0] = ($valid | $reset) ? 32'b0 : ($op[1] ? ($op[0] ? $quo[31:0] : $mul[31:0]) : ($op[0] ? $diff[31:0] : $sum[31:0]));  
   
\SV
   endmodule

