PImage load;

class LevelThree {
  //instance variables
  
  LevelThree() {  
    load = loadImage("loading.jpg");
  }
  
  void draw() {
    background(load);
    textSize(20);
    fill(255);
    text("Level Three", 20, 50);
     text("You will have 120 seconds \n to complete the third \n and final maze",1,100);
     text("Press any key to continue", 20, 500);
   }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    gameStage = 10 ;
    GameSceneThree = new GameSceneThree();         
  }
}
