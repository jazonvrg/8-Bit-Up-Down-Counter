module up_down_counter(
	input logic clk,
	input logic rst_n,
	input logic up_down,
	output logic [7:0] count
);

	logic [7:0] prev_count;

	always_comb begin
		if (up_down == 0) begin
			prev_count = count - 1'd1;
		end
		else begin
			prev_count = count + 1'd1;
		end		
	end

	always_ff @(posedge clk or negedge rst_n) begin
		if (rst_n == 0) begin
			count <= 8'h0;
		end
		else begin
			count <= prev_count;
		end
	end

endmodule
