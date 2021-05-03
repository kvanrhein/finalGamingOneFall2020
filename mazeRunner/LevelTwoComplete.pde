PImage transition;

class LevelTwoComplete {
  //instance variables
  
  LevelTwoComplete() {  
    transition = loadImage("transition2.jpg");
  }
  
  void draw() {
    background(transition);
    textSize(20);
    fill(255);
    text("You got the cheese!", 2, 200);
    text("Level Two Complete. ", 2, 300);
    text("Hit the c key to continue", 2, 400);
  }
  
  void keyPressed() {
    if(key == 'c'){
    //just go to levelTwo if key is pressed
    gameStage = 9;
   levelThree = new LevelThree();         
    }
  }
}
