int gameStage;

//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelTwo levelTwo;
LevelOneComplete levelOneComplete;

void setup() {
  size(800, 600);
  gameStage = 0;
  intro = new Intro();
}

void draw() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      levelOne.draw();
    break;
    case 2:  //level 2
      levelTwo.draw();
    break;
    case 3:  //game win
      gameWin.draw();
    break;
    case 4:  //game over
      gameOver.draw();
    break;
    case 5: //level one complete
      levelOneComplete.draw();
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
    case 2:  //level 2
      levelTwo.keyPressed();
    break;
    case 3:  //game win
      gameWin.keyPressed();
    break;
    case 4:  //game over
      gameOver.keyPressed();
    break;
    case 5: //level one complete
      levelOneComplete.keyPressed();
    break;
  }
}
void mouseClicked(){
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
    case 5: //level one complete
      levelOneComplete.mouseClicked();
    break;
  }
}
