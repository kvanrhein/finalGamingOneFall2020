class LevelOneComplete {
  //instance variables
  
  LevelOneComplete() {  
    
  }
  
  void draw() {
    background(120);
    textSize(90);
    text("Level 1 Complete!", 20, 200);
    ellipse(750, 550, 50, 50);
    textSize(50);
    text("Next", 675, 500);
  }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    gameStage = 2;
    levelTwo = new LevelTwo();         
  }
  void mouseClicked(){
    if (dist(750, 550, mouseX, mouseY) < 60) {
      gameStage = 2;
      levelTwo = new LevelTwo();
  }
}
}
