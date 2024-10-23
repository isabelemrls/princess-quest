void menuInicial() {
  // Tela 0: Menu inicial

  // Título
  noStroke();
  image(landimg, 0, 0);
  fill(255);
  textSize(70);
  textAlign(CENTER, CENTER);
  text("PRINCESS QUEST", width / 2, 200);

  // Desenhar botão para jogar
  if (mouseX >300 && mouseX <500 && mouseY > 280 && mouseY <340) {
    fill(150);
  } else {
    fill(255);
  }
  rect(300, 280, 200, 60, 30);
  fill(0);
  textSize(35);
  text("jogar", width / 2, 305);

  //botão das regras
  if (mouseX >725 && mouseX <775 && mouseY > 15 && mouseY <65) {
    fill(150);
  } else {
    fill(255);
  }
  ellipse(750, 40, 50, 50);
  fill(0);
  textSize(54);
  text("?", 750, 40);

  //botão da música
  if (playing) {
    fill(255);
  } else {
    fill(155);
  }

  ellipse(690, 40, 50, 50);
  textSize(17);
  fill(0);
  text("sound", 690, 40);
}
