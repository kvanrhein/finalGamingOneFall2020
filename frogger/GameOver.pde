class GameOver {
  //instance variables
  
  GameOver() {  
    
  }
  
  void draw() {
    background(#ff0000);
    textSize(200);
    text("Game", 20, 200);
    text("Over", 20, 400);
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();
  }
  void mouseClicked() {
    gameStage = 0;
    intro = new Intro();
  }
}
  
  
