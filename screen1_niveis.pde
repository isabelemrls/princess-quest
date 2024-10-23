void selecaoNiveis() {
  //Tela 1: Níveis

  //Título dos níveis
  image(landimg, 0, 0);
  noStroke();
  fill(255);
  textSize(55);
  textAlign(CENTER, CENTER);
  text("NÍVEL", width/2, 170);

  //Botão para o fácil
  if (mouseX >300 && mouseX <500 && mouseY > 225 && mouseY <275) {
    fill(150);
  } else {
    fill(255);
  }
  rect(300, 225, 200, 50, 30);
  fill(0);
  textSize(35);
  text("Fácil", width/2, 250);

  //Botão para o médio
  if (mouseX >300 && mouseX <500 && mouseY > 300 && mouseY <350) {
    fill(150);
  } else {
    fill(255);
  }
  rect(300, 300, 200, 50, 30);
  fill(0);
  textSize(35);
  text("Médio", width/2, 325);

  //Botão para o difícil
  if (mouseX >300 && mouseX <500 && mouseY > 375 && mouseY <425) {
    fill(150);
  } else {
    fill(255);
  }
  rect(300, 375, 200, 50, 30);
  fill(0);
  textSize(35);
  text("Difícil", width/2, 400);
}
