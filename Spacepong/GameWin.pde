import ddf.minim.*;
class GameWin {
     
  AudioPlayer winSound;
  //instance variables
 // PImage room;
  GameWin() {  
   // room = loadImage("name.png");
    this.winSound = minim.loadFile("gamewin.mp3");
   winSound.cue(0);
     winSound.play();
  }
  
  void draw() {
    background(233, 7, 245);
    textSize(200);
    fill(0);
    text("Win!", 20, 300);
    f.draw();
    m.draw();
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
  }

void mouseClicked() {
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
  }
}
