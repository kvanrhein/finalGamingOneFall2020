PImage loading;

class LevelOne {
  //instance variables
  
  LevelOne() {  
    loading = loadImage("loading.jpg");
  }
  
  void draw() {
    background(loading);
    textSize(20);
    fill(255);
    text("Level One", 20, 50);
     text("You will have 60 seconds \n to complete  the first maze",20,100);
     text("Press any key to continue", 20, 500);
  }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    gameStage = 6 ;
    GameSceneOne = new GameSceneOne();         
  }
}
