
task run_test();
	begin
		err = 0;	
		$display("===========================================================================");
		$display("===================== TEST NAME : test_rollunder_down =====================");
		$display("===========================================================================");
		$display("ITEM: Check the underflow behavior");
		$display("----------------------------------------------------------------------------------------------------------------------");		
		reset();
		rst_n = 1;
		up_down = 0;
		@(posedge clk);
		#1;
		comp(count, 8'hff);
//		$display("	CASE: Count down the %d time", i + 1);
		$display("----------------------------------------------------------------------------------------------------------------------");
        	if (err != 0)
   	        	$display("Test result FAILED");
 	       	else
        		$display("Test result PASSED");
	end
endtask
