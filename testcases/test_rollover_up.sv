
task run_test();
	begin
		err = 0;	
		$display("===========================================================================");
		$display("====================== TEST NAME : test_rollover_up =======================");
		$display("===========================================================================");
		$display("ITEM: Check the overflow behavior");
		$display("----------------------------------------------------------------------------------------------------------------------");		
		reset();
		rst_n = 1;
		up_down = 1;
		wait (count == 8'hff) @(posedge clk);
		@(posedge clk);
		#1;
		comp(count, 8'h1);
//		$display("	CASE: Count down the %d time", i + 1);
		$display("----------------------------------------------------------------------------------------------------------------------");
        	if (err != 0)
   	        	$display("Test result FAILED");
 	       	else
        		$display("Test result PASSED");
	end
endtask
