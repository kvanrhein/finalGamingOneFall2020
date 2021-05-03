class Level2Complete {
  //instance variables
  
  Level2Complete() {  
    
  }
  
  void draw() {
    background(#ff0000);
    textSize(100);
    textSize(30);
    text("Your Going to Level 3", 20, 200);
    text("Press any key to contiue", 350, 200);
    textSize(30);
    text("From slime:All hidden things are good ",20,450);
   
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 6;
    levelThree = new LevelThree();
  }
}
