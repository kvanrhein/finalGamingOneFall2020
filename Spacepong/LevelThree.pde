class LevelThree {
  //instance variables
  PImage room;
  LevelThree() {  
     room = loadImage("level3.png");
    gameSound.cue(0);
    gameSound.play(3);
  }
  
  void draw() {
    background(room);
    fill(235,64,52);
    textSize(100);
    text("Level Three", 20, 200);
    textSize(30);
    text(" Click a key to start", 20, 270);
  }
  
  void keyPressed() {
    //Actually decide the next level based on user input
     gameStage = 8;
      levelThreeComplete = new LevelThreeComplete();    
  }

void mouseClicked() {
    
  }
}
