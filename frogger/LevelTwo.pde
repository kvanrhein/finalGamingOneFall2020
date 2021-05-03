class LevelTwo {
  int b;
  
  LevelTwo() {  
    b = 0;
  }
  
  void draw() {
    background(20);
    textSize(100);
    text("Level Two", 20, 200);
    ellipse(750, 550, 50, 50);
    textSize(50);
    text("Skip", 700, 500);
    textSize(25);
    text("Hit b 10 times to win", 20, 300);
    if( b == 10){
      gameStage = 3;
      gameWin = new GameWin();
    }
  }
  
  void keyPressed() {
    //Actually decide the next level based on user input
    if (key == 'b') {
     b = b + 1;
    }
    else {
      gameStage = 4;
      gameOver = new GameOver();
    }
  }
  void mouseClicked() {
    if (dist(750, 550, mouseX, mouseY) < 60) {
      gameStage = 3;
      gameWin = new GameWin();
    }
  }
}
