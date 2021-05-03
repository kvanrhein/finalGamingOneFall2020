class GameOver {
  //instance variables
  PImage gameover;
  GameOver() {  
    gameover= loadImage("gameover.png");
  }
  
  void draw() {
    image(gameover,400,100);
    
    
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();
  }
}
  
  
