class GameOver {
  //instance variables
  
  GameOver() {  
    
  }
  
  void draw() {
    background(#ff0000);
    textSize(100);
    text("Game", 20, 200);
    text("Over", 350, 200);
    textSize(40);
    text(" Press any key to Restart",20,450);
   
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();
  }
}
  
  
