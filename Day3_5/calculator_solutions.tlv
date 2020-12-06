\m4_TLV_version 1d: tl-x.org
\SV
//Calculator labs solutions here
 \TLV
  
  $reset = *reset;
  $val1[31:0] = >>1$out ;
  $val2[31:0] = $rand2[3:0] ;
  $sum[31:0] = $val1[31:0] + $val2[31:0];
  $diff[31:0] = $val1[31:0] - $val2[31:0];
  $mul[31:0] = $val1[31:0] * $val2[31:0];
  $quo[31:0] = $val1[31:0] / $val2[31:0];
  $out[31:0] = $reset ? 32'b0 : ($op[1] ? ($op[0] ? $quo[31:0] : $mul[31:0]) : ($op[0] ? $diff[31:0] : $sum[31:0])) ;  
  *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
