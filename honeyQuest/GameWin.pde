class GameWin {
  PImage win;
  AudioPlayer ap;
  GameWin() {  
    this.win = loadImage("win.jpg");
    ap = minim.loadFile("imsoniclol.mp3");
  
  ap.cue(0);
  ap.play();
  }
  
  void draw() {
    background(#00ff00);
    image(win, 0, 0, 800, 600);
    fill(191, 162, 33);
    textSize(30);
    text("Hit 'k' to restart", 300, 400);
  }
  
  void keyPressed() {
    
    //just go back to intro screen if key is pressed
    if(key == 'k'){
    gameStage = 0;
    intro = new Intro();
     ap.pause () ; 

    }
  }
  
  void mouseClicked(){
  
  }
}
