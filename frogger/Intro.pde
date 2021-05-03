class Intro {
  PImage start;
  
  Intro() {  
    start = loadImage("start.jpg");
  }
  
  void draw() {
    background(80);
    textSize(50);
    text("Start hit any key", 10, 580);
    image(start, 0, 0);
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();     
  }
  void mouseClicked() {
    gameStage = 1;
    levelOne = new LevelOne();
  }
}
