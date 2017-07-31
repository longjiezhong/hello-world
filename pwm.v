module pwm(
  input clk,
  input rst_n,
  input[7:0] duty,
  output pwm_out
  );
  
	reg[7:0] pwm_cnt;
	
	always@(posedge clk, negedge rst_n)
	if(rst_n == 1'b0)
	  pwm_cnt <= 8'h0;
	else
	  pwm_cnt <= pwm_cnt + 8'h1;
	  
	assign pwm_out = (pwm_cnt <=  duty)? 1'b1 : 1'b0;
	
endmodule