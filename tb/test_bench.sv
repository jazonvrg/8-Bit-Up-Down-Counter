module test_bench (
);

	logic clk;
	logic rst_n;
	logic up_down;
	logic [7:0] count;

	integer err;

	up_down_counter top_dut(.*);
	
	`include "run_test.sv"

	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end

	initial begin
		reset();
		#25;
		run_test();
		#100;
		$finish;
	end

	task reset;
		begin
			rst_n = 0;
			up_down = 0;
			#10;
		end
	endtask

	task comp;
		input [7:0] data;
		input [7:0] cp;
		begin	
			if (data == cp) begin
				$display("t = %t. PASSED. Exp: %b, Act: %b", $time, cp, data);
			end
			else begin
				$display("t = %t. FAILED. Exp: %b, Act: %b", $time, cp, data);
				err = err + 1;
			end
		end
	endtask

endmodule
