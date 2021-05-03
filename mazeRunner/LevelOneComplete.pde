PImage tra;

class LevelOneComplete {
  //instance variables
  
  LevelOneComplete() {  
    tra = loadImage("transition2.jpg");
  }
  
  void draw() {
    background(tra);
    textSize(20);
    fill(255);
   text("You got the cheese!", 2, 200);
    text("Level One Complete. ", 2, 300);
    text("Hit the c key to continue", 2, 400);
  }
  
  void keyPressed() {
    if(key == 'c'){
    //just go to levelTwo if key is pressed
    gameStage = 2;
    levelTwo = new LevelTwo();         
    }
  }
}
