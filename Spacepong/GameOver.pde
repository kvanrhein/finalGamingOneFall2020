class GameOver {
  //instance variables
 
 
  GameOver() {  
   
  }
  
  void draw() {
    background(118, 120, 103);
    textSize(200);
    text("Game", 20, 200);
    text("Over", 20, 400);
     thePong.draw();
     theLanet.draw();
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();
  } 

   void mouseClicked() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();
  }
}
  
