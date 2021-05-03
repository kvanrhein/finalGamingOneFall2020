class GameWin {
  //instance variables
  
  GameWin() {  
    
  }
  
  void draw() {
    background(#00ff00);
    textSize(100);
    text("Win!", 20, 150);
     textSize(50);
    text(" Press any key to Restart",20,350);
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
  }
}
