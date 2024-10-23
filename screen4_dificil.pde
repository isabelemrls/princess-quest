void nivelDificil() {
  //Tela 4: Nível difícil

  if (gameOn == true) {
    background(0);
    image(skyimg, 0, 0);

    // Safe zone
    image(casteloimg, safeX, safeY);

    //Parte da princesa
    //Criação do princesa
    image(princesaimg, priX, priY);

    //Movimentação da princesa e velocidade
    if (keyPressed && keyCode == LEFT && priX >0 +5) {
      priX = priX -5; //diminui posição x
    }
    //tecla pressionada E tecla é a DIREITA
    if (keyPressed && keyCode == RIGHT && priX <800 -45) {
      priX = priX +5; //incrementa posição x
    }
    //tecla pressionada E tecla é a CIMA
    if (keyPressed && keyCode == UP && priY>0 +5) {
      priY = priY -5; //diminui posição y
    }
    //tecla pressionada E tecla é a BAIXO
    if (keyPressed && keyCode == DOWN && priY <600 -25) {
      priY = priY +5; //aumenta posição y
    }


    //Parte do panda
    //Criação do panda
    image(pandaimg, pandaX, pandaY);
    //Descida do panda e velocidade
    pandaY = pandaY + 4;
    //Checar colisão com a borda para reaparecer
    if (pandaY > height) {
      pandaX = int(random(width)); //aleatoriamente em uma parte lateral
      pandaY = 0; //começa da parte superior
    }
    //Segundo panda
    image(pandaimg, panda1X, panda1Y);
    //Descida do panda e velocidade
    panda1Y = panda1Y + 4;
    //Checar colisão com a borda para reaparecer
    if (panda1Y > height) {
      panda1X = int(random(width)); //aleatoriamente em uma parte lateral
      panda1Y = 0; //começa da parte superior
    }

    //Parte do fogo
    //Criação do fogo
    image(fireimg, fireX, fireY);
    //Descida do fogo e velocidade
    fireY = fireY + 4;
    //Checar colisão com a borda para reaparecer
    if (fireY > height) {
      fireX = int(random(width)); //aleatoriamente em uma parte lateral
      fireY = 0; //começa da parte superior
    }
    // Segundo fogo
    image(fireimg, fire1X, fire1Y);
    //Descida do fogo e velocidade
    fire1Y = fire1Y + 4;
    //Checar colisão com a borda para reaparecer
    if (fire1Y > height) {
      fire1X = int(random(width)); //aleatoriamente em uma parte lateral
      fire1Y = 0; //começa da parte superior
    }

    //terceiro fogo
    image(fireimg, fire2X, fire2Y);
    //Descida do fogo e velocidade
    fire2Y = fire2Y + 4;
    //Checar colisão com a borda  para reaparecer
    if (fire2Y > height) {
      fire2X = int(random(width)); //aleatoriamente em uma parte lateral
      fire2Y = 0; //começa parte superior
    }

    //Colisões
    // A função checa a colisão entre a princesa e o panda
    if (abs(priX - pandaX) < 60 && abs(priY - pandaY) < 60) {
      //Pandas salvos
      panda_aboard +=1;
      colider_safe = false;
      //Reaparecer os pandas
      pandaX = int(random(width));
      pandaY = 0;
    }
    // A função checa a colisão entre a princesa e o segundo panda
    if (abs(priX - panda1X) < 60 && abs(priY - panda1Y) < 60) {
      //Pandas salvos
      panda_aboard +=1;
      colider_safe = false;
      //Reaparecer os pandas
      panda1X = int(random(width));
      panda1Y = 0;
    }
    //A função checa a colisão entre a princesa e a safe
    if (colider_safe == false) {
      if (abs(priX - safeX) < 50 && abs(priY - safeY) < 50) {
        //Pontuação: pandas salvos * 10
        score = score + panda_aboard * 10;
        panda_aboard = 0;
        colider_safe = true;

        //Se pontuação for a cima de 190, o jogo termina
        if (score > 190) {
          gameOn = false;
        }
      }
    }
    // A função checa a colisão entre a princesa e o fogo
    //Se houver essa colisão, o jogo dá gameOver
    if (abs(priX - fireX) < 60 && abs(priY - fireY) < 60) {
      gameOn = false;
      gameOver = true;
    }
    // A função checa a colisão entre a princesa e o segundo fogo
    //Se houver essa colisão, o jogo dá gameOver
    if (abs(priX - fire1X) < 60 && abs(priY - fire1Y) < 60) {
      gameOn = false;
      gameOver = true;
    }
    // A função checa a colisão entre a princesa e o terceiro fogo
    //Se houver essa colisão, o jogo dá gameOver
    if (abs(priX - fire2X) < 60 && abs(priY - fire2Y) < 60) {
      gameOn = false;
      gameOver = true;
    }
    //texto da pontuação, pandas salvos e objetivo
    fill(255);
    textSize(24);
    textAlign(CORNER, CORNER);
    text("Pontuação: " + score, 40, 50);
    text("Pandas salvos: " + panda_aboard, 40, 80);
    text("objetivo: 200 pontos", 40, 110);
  }
  //Saiu da condição de continuar o jogo
  else {
    fim();
  }
}
