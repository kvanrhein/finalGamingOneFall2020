class GameWin {
  PImage win;
  
  GameWin() {  
    win = loadImage("win.jpg");
  }
  
  void draw() {
    background(#00ff00);
    textSize(200);
    image(win, 0, 60);
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
  }
  void mouseClicked() {
    gameStage = 0;
    intro = new Intro();
  }
}
