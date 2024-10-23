import processing.sound.*;

int priX, priY;
int safeX, safeY;
int pandaX, pandaY, panda1X, panda1Y;
int fireX, fireY, fire1X, fire1Y, fire2X, fire2Y;
int score;
int panda_aboard;
boolean colider_safe;
boolean gameOn;
boolean gameOver;
PFont minhaFonte;
PImage landimg, skyimg, princesaimg, casteloimg, fireimg, pandaimg, fimimg, regrasimg;
int screen;
SoundFile music;
boolean playing = true;

void setup() {
  size(800, 600);

  //fonte do text
  minhaFonte = createFont("Sparky Stones.ttf", 32);
  textFont(minhaFonte);

  //música do jogo
  music = new SoundFile(this, "Fairytale.mp3");
  music.loop();

  //imagens utilizadas
  landimg = loadImage("data/land.png");
  skyimg = loadImage("data/sky.png");
  princesaimg = loadImage("data/princesa.png");
  casteloimg = loadImage("data/castelo.png");
  fireimg = loadImage("data/fire.png");
  pandaimg = loadImage("data/panda.png");
  fimimg = loadImage("data/fim.png");
  regrasimg = loadImage("data/regras.png");

  //situação de colisão e pandas salvos
  colider_safe=false;
  panda_aboard = 0;

  //coordenadas iniciais da saze zone
  safeX= 650;
  safeY= 300;

  // coordenadas inicias da princesa
  priX = width / 2;
  priY = height - 100;

  //geração aleatória do panda
  pandaX = int(random(width));
  pandaY = 0;

  //geração aleatória do panda
  panda1X = int(random(width));
  panda1Y = 0;

  //geração aleatória do fogo
  fireX = int(random(width));
  fireY = 0;

  //geração aleatória do fogo
  fire1X = int(random(width));
  fire1Y = 0;

  //geração aleatória do fogo
  fire2X = int(random(width));
  fire2Y = 0;

  //Score inicia 0
  score = 0;

  //Situação inicial do jogo
  gameOn = true;
  gameOver = false;
  screen = 0;
}

void draw () {
  //desenha minhas outras telas
  if (screen == 0) menuInicial();
  else if (screen == 1) selecaoNiveis();
  else if (screen == 2) nivelFacil();
  else if (screen == 3) nivelMedio();
  else if (screen == 4) nivelDificil();
  else if (screen == 5) regras();
}

void mousePressed() {
  //mudança de estados ao apertar
  // Screen 0
  // mudar para screen 1
  if (screen == 0) {
    if (mouseX >300 && mouseX <500 && mouseY > 280 && mouseY <340) {
      screen = 1;
    }
    //mudar para screen 5
    if (mouseX >725 && mouseX <775 && mouseY > 15 && mouseY <65) {
      screen=5;
    }
    //ligar e desligar a música
    if (mouseX > 675 && mouseX <715 && mouseY > 15 && mouseY < 65) {
      if (playing) {
        music.pause();
      } else {
        music.play();
      }
      playing = !playing;
    }
  }
  //screen 5:
  //voltar para tela 0
  else if (screen==5) {
    if (mouseX >25 && mouseX <75 && mouseY > 15 && mouseY <65)
      screen=0;
  }
  // screen 1:
  else if (screen==1) {
    //ir para tela 2 (fácil)
    if (mouseX >300 && mouseX <500 && mouseY > 225 && mouseY <275) {
      screen=2;
      gameOn = true;
      gameOver = false;
    }
    //ir para tela 3 (médio)
    if (mouseX >300 && mouseX <500 && mouseY > 300 && mouseY <350) {
      screen=3;
      gameOn = true;
    }
    //ir para tela 4 (difícil)
    if (mouseX >300 && mouseX <500 && mouseY > 375 && mouseY <425) {
      screen=4;
      gameOn = true;
    }
  }
  // se gameOn false, ao apertar no botão resetar o jogo
  else if (gameOn==false) {
    if (screen==2 || screen==3 || screen==4) {
      if (mouseX >300 && mouseX <520 && mouseY > 350 && mouseY <410) {
        setup();
      }
    }
  }
}
