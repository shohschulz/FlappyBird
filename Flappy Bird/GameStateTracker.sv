//Tracks the current game state.
//clk: Clock input 
//reset: Will reset the game state to OVER
//collision: True if there is a collision;
//Output:
//done: True if there is a collision; 
module GameStateTracker (clk, reset, collision, done, up);
    input logic clk, reset, collision, up;
    output logic done; 
    enum {RUNNING, OVER} ps, ns; 

    always_comb begin
        case(ps)
            RUNNING: 
                if(collision)
                    ns = OVER;
                else
                    ns = RUNNING;
            OVER: 
                if(up) begin
                   ns = RUNNING; 
                end
                else 
                    ns = OVER;
        endcase
    end
    always_ff @(posedge clk) begin
        if(reset)
            ps <= OVER;
        else 
            ps <= ns;
    end

    assign done = (ps == OVER);

endmodule
