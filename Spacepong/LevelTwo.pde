class LevelTwo {
  //instance variables
  PImage room;
  LevelTwo() {  
     room = loadImage("level2.png");
     gameSound.cue(0);
    gameSound.play(3);
  }
  
  void draw() {
    background(room);
    //fill(255);
    fill(29,20,217);
    textSize(100);
    text("Level Two", 20, 200);
    textSize(30);
    text(" Click a key to start", 20, 270);
  }
  
  void keyPressed() {
    //Actually decide the next level based on user input
     gameStage = 6;
      levelTwoComplete = new LevelTwoComplete();    
  }

void mouseClicked() {
   
 
  }
}
