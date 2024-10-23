void fim() {
  //Tela 6: tela de derrota e vitória

  //Verificar se perdeu
  if (gameOver == true) {
    background(0);
    image(fimimg, 0, 0);
    fill(0);
    textSize(40);
    textAlign(CENTER, CENTER);
    text("Você perdeu!", width / 2, height / 2-50);
    textSize(35);
    text("Pontuação final: " + score, width / 2, height / 2- 10);
  }
  //Verificar se ganhou
  if (gameOver == false) {
    background(0);
    image(fimimg, 0, 0);
    fill(0);
    textSize(40);
    textAlign(CENTER, CENTER);
    text("Você ganhou!", width / 2, height / 2-50);
    textSize(35);
    text("Final Score: " + score, width / 2, height / 2 -10);
  }
  //botão de tentar novamente
  if (mouseX >300 && mouseX <520 && mouseY > 350 && mouseY <410) {
    fill(150);
  } else {
    fill(255);
  }
  rect(300, 350, 220, 60, 30);
  fill(0);
  textSize(25);
  text ("Jogar novamente", width/2+10, 380);
}
