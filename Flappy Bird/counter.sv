module counter(out, clk, reset, collision);
    output logic [4:0] out;
    input logic clk, reset, collision;
    
	 always_ff @(posedge clk) begin
        if (reset)
            out <= 0;
        else begin
            if (collision) begin
                out <= out + 1; 
            end
            if(out >= 32)
                out <= 0;
            else
                out <= out; 
        end
    end
endmodule