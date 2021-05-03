class LevelOne {
  //instance variables
  PImage room;
  LevelOne() {  
     room = loadImage("level1.png");
    gameSound.cue(0);
    gameSound.play(3);
  }
  
  void draw() {
    background(room);
    fill(242,238,10);
    textSize(100);
    text("Level One", 20, 200);
    textSize(30);
    text(" Click a key to start", 20, 270);

  }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    gameStage = 5;
    levelOneComplete = new LevelOneComplete();    
  }

void mouseClicked() {
   
  }
}
