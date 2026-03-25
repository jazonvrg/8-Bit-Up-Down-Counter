
task run_test();
	begin
		err = 0;	
		$display("===========================================================================");
		$display("===================== TEST NAME : test_reset_behavior =====================");
		$display("===========================================================================");
		$display("ITEM: Check the reset behavior");
		$display("----------------------------------------------------------------------------------------------------------------------");		
		rst_n = 1;
		repeat (5) @(posedge clk);
		rst_n = 0;
		@(posedge clk);
		#1;
		comp(count, 8'h0);		
//		$display("	CASE: a = %b, b = %b, cin = %b", a, b, cin);
		$display("----------------------------------------------------------------------------------------------------------------------");
        	if (err != 0)
   	        	$display("Test result FAILED");
 	       	else
        		$display("Test result PASSED");
	end
endtask
