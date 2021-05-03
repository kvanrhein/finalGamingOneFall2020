
Pong pongs[];
int pongCount;
import ddf.minim.*;
Minim minim;
int gameStage;
int points;
Pong thePong;
Lanet theLanet;
Fire f;
Lanet l;
Moon m;

 

//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelTwo levelTwo;
LevelThree levelThree;
LevelOneComplete levelOneComplete;
LevelTwoComplete levelTwoComplete;
LevelThreeComplete levelThreeComplete;
AudioPlayer gameSound;
void setup() {
  size(800, 800);
  minim = new Minim(this); 
  
  gameStage = 0;
  intro = new Intro();
  points = 0;
  thePong = new Pong(300, 300, 6.1, -4);
  gameSound = minim.loadFile("spacemusic.mp3");
  //pongs = new Pong [2];
  //pongs[0] = new Pong(300, 300, 6.1, -4);
  //pongs[1] = new Pong (400, 400,6.1,-4);
  f = new Fire(400,400);

  theLanet = new Lanet(300,300);
 
  m = new Moon ( 700,30);
  //x4=400;
  //y4=10;

}

void draw() {
   switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      levelOne.draw();
    break;
    case 5:  //intro rules
      levelOneComplete.draw();
    break;
    case 2:  //level 2
      levelTwo.draw();
    break;
     case 6:  //intro rules
      levelTwoComplete.draw();
    break;
        case 7:  //level 2
      levelThree.draw();
    break;
     case 8:  //intro rules
      levelThreeComplete.draw();
    break;
    case 3:  //game win
      gameWin.draw();
    break;
    case 4:  //game over
      gameOver.draw();
    break;
  
  }
}

void keyPressed() {
   switch(gameStage) {
    case 0:  //intro rules
      intro.keyPressed();
    break;
    case 1:  //level 1
      levelOne.keyPressed();
    break;
   case 5:  //level 1
     levelOneComplete.keyPressed();
   break;
    case 2:  //level 2
      levelTwo.keyPressed();
    break;
   case 6:  //intro rules
     levelTwoComplete.keyPressed();
  break;
     case 7:  //level 2
      levelThree.keyPressed();
    break;
    case 8:  //intro rules
      levelThreeComplete.keyPressed();
   break;
    case 3:  //game win
      gameWin.keyPressed();
    break;
    case 4:  //game over
      gameOver.keyPressed();
    break;
  }  
}

void mouseClicked() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.mouseClicked();
    break;
    case 1:  //level 1
      levelOne.mouseClicked();
    break;
    case 2:  //level 2
      levelTwo.mouseClicked();
    break;
    case 3:  //game win
      gameWin.mouseClicked();
    break;
    case 4:  //game over
      gameOver.mouseClicked();
    break;
  }  
}
