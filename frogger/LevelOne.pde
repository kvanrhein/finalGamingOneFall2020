class LevelOne {
  int n;
  
  LevelOne() {  
    n = 0;
  }
  
  void draw() {
    background(120);
    textSize(100);
    text("Level One", 20, 200);
    ellipse(750, 550, 50, 50);
    textSize(50);
    text("Skip", 700, 500);
    textSize(25);
    text("Hit n 5 times to go to the next level", 20, 300);
    if (n == 5 ){
      gameStage = 5;
      levelOneComplete = new LevelOneComplete();
    }
  }
  
  void keyPressed() {
    //just go to levelTwo if key is pressed
    if (key == 'n') {
      n = n + 1;
    }  
  }
  void mouseClicked(){
    if (dist(750, 550, mouseX, mouseY) < 60) {
      gameStage = 5;
      levelOneComplete = new LevelOneComplete();
    }
  }
}
