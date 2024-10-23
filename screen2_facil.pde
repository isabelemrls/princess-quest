void nivelFacil() {
  //Tela 2: Nível fácil

  if (gameOn == true) {
    image(skyimg, 0, 0);

    // Safe zone
    image(casteloimg, safeX, safeY);

    //Parte da princesa:
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
    pandaY = pandaY + 1;
    //Colisão com a borda para reaparecer
    if (pandaY > height) {
      pandaX = int(random(width)); //aleatoriamente em uma parte lateral
      pandaY = 0; //começa da parte supeior
    }

    //Parte do fogo
    //Criação do fogo
    image(fireimg, fireX, fireY);
    //Descida do fogo e velocidade
    fireY = fireY + 2;
    //Checar colisão com a borda para reaparecer
    if (fireY > height) {
      fireX = int(random(width)); //aleatoriamente em uma parte lateral
      fireY = 0; //começa da parte supeior
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

    // A função checa a colisão entre a princesa e a safe
    if (colider_safe == false) {
      if (abs(priX - safeX) < 50 && abs(priY - safeY) < 50) {
        //Pontuação: pandas salvos * 10
        score = score + panda_aboard * 10;
        panda_aboard = 0;
        colider_safe = true;
        //Se pontuação for a cima de 90, o jogo termina
        if (score > 90) {
          gameOn = false;
        }
      }
    }
    // A função checa a colisão entre a princesa e o fogo
    // se houver essa colisão, o jogo dá gameOver
    if (abs(priX - fireX) < 60 && abs(priY - fireY) < 60) {
      gameOn = false;
      gameOver = true;
    }
    //texto da pontuação, pandas salvos e objetivo
    fill(255);
    textSize(24);
    textAlign(CORNER, CORNER);
    text("Pontuação: " + score, 40, 50);
    text("Pandas salvos: " + panda_aboard, 40, 80);
    text("objetivo: 100 pontos", 40, 110);
  }

  //Saiu da condição de continuar o jogo
  else {
    fim();
  }
}
