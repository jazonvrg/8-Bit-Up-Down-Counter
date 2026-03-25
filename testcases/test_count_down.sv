
task run_test();
	begin
		err = 0;	
		$display("===========================================================================");
		$display("======================= TEST NAME : test_count_down =======================");
		$display("===========================================================================");
		$display("ITEM: Check the count-down behavior");
		$display("----------------------------------------------------------------------------------------------------------------------");		
		reset();
		rst_n = 1;
		up_down = 0;
		for(int i = 4; i >= 0; i = i - 1) begin
			@(posedge clk);
			#1;
			$display("	CASE: Count down the %d time", 8'd4 - i + 1);
			comp(count, 8'hff - (8'd4 - i));
		end
		$display("----------------------------------------------------------------------------------------------------------------------");
        	if (err != 0)
   	        	$display("Test result FAILED");
 	       	else
        		$display("Test result PASSED");
	end
endtask
