void regras() {
  //Tela 5: regras

  image(regrasimg, 0, 0);

  //texto de regras
  fill(0);
  textSize(55);
  textAlign(CENTER, CENTER);
  text("Como jogar?", width / 2, 80);
  textSize(35);
  text("Salve os pandas e leve-os ao castelo,\n mas cuidado com os fogos!", width / 2, 170);
  text("Para vencer, atinja o objetivo de cada fase.", width / 2, 240);

  // botão para voltar para tela 0
  if (mouseX >25 && mouseX <75 && mouseY > 15 && mouseY <65) {
    fill(150);
  } else {
    fill(255);
  }
  ellipse(50, 40, 50, 50);
  fill(0);
  textSize(20);
  text("back", 50, 40);
}
