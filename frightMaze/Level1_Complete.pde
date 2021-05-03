class Level1Complete {
  //instance variables
  
  Level1Complete() {  
    
  }
  
  void draw() {
    background(#ff0000);
    textSize(30);
    text("Your Going to Level 2", 20, 200);
    text("Press any key to contiue", 350, 200);
    textSize(30);
    text("From slime: Fake things can show you the real things ",20,450);
   
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 4;
    levelTwo = new LevelTwo();
  }
}
