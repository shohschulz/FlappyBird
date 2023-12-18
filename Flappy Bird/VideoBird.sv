//Edits the values generated in the bird module to be usable for our driver and collision logic
module VideoBird(bird_height, BirdLeft, BirdRight, BirdTop, BirdBot);
  input logic [8:0] bird_height;
  output logic [9:0] BirdLeft, BirdRight;
  output logic [8:0] BirdTop, BirdBot;

  assign BirdLeft = 10'd60;
  assign BirdRight = 10'd100;
  assign BirdTop = Constants::SCREEN_HEIGHT - bird_height; 
  assign BirdBot = Constants::SCREEN_HEIGHT - bird_height + 40;
endmodule

