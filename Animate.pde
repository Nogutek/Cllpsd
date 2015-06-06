void animate() {
  if(animate1 == 4){
    kx = 0;
    animate1 = 0;
  }
  if(animate1 == 3){
    kx = (character.width / 4) * 3;
    animate1 = 4;
  }
  if(animate1 == 2){
    kx = (character.width / 4) * 2;
    animate1 = 3;
  }
  if(animate1 == 1){
    kx = (character.width / 4);
    animate1 = 2;
  }
  
  if(animate2 == 4){
    kx = 0;
    animate2 = 0;
  }
  if(animate2 == 3){
    kx = (character.width / 4) * 3;
    animate2 = 4;
  }
  if(animate2 == 2){
    kx = (character.width / 4) * 2;
    animate2 = 3;
  }
  if(animate2 == 1){
    kx = (character.width / 4);
    animate2 = 2;
  }
  
  if(animate3 == 4){
    kx = 0;
    animate3 = 0;
  }
  if(animate3 == 3){
    kx = (character.width / 4) * 3;
    animate3 = 4;
  }
  if(animate3 == 2){
    kx = (character.width / 4) * 2;
    animate3 = 3;
  }
  if(animate3 == 1){
    kx = (character.width / 4);
    animate3 = 2;
  }
  
  if(animate4 == 4){
    kx = 0;
    animate4 = 0;
  }
  if(animate4 == 3){
    kx = (character.width / 4) * 3;
    animate4 = 4;
  }
  if(animate4 == 2){
    kx = (character.width / 4) * 2;
    animate4 = 3;
  }
  if(animate4 == 1){
    kx = (character.width / 4);
    animate4 = 2;
  }
}
