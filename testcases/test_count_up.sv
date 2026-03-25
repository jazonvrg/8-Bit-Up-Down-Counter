
task run_test();
	begin
		err = 0;	
		$display("===========================================================================");
		$display("======================== TEST NAME : test_count_up ========================");
		$display("===========================================================================");
		$display("ITEM: Check the count-up behavior");
		$display("----------------------------------------------------------------------------------------------------------------------");		
		reset();
		rst_n = 1;
		up_down = 1;
		for(int i = 0; i < 5; i = i + 1) begin
			@(posedge clk);
			#1;
			$display("	CASE: Count up the %d time", i + 1);
			comp(count, i + 1'd1);
		end
		$display("----------------------------------------------------------------------------------------------------------------------");
        	if (err != 0)
   	        	$display("Test result FAILED");
 	       	else
        		$display("Test result PASSED");
	end
endtask
