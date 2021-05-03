PImage lo;

class LevelTwo {
  //instance variables
  
  LevelTwo() {  
    lo = loadImage("loading.jpg");
  }
  
  void draw() {
    background(lo);
textSize(20);
    fill(255);
    text("Level Two", 20, 50);
     text("You will have 100 seconds \n to complete  the second maze",20,100);
     text("Press any key to continue", 20, 500);
  }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    gameStage = 8 ;
    GameSceneTwo = new GameSceneTwo();         
  }
}
