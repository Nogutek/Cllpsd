PImage map, character, npc;
int x = 1, y = 1;
int l, t;
int kx, ky;
boolean ruch = false;
int xpl, ypl;
int CameraX, CameraY;
int mapw, maph;
int tanimate;
byte animate1, animate2, animate3, animate4;

void setup() {
  size(640, 480);
  map = loadImage("maps/1.png");
  character = loadImage("characters/1.png");
  npc = loadImage("characters/2.png");
  l = t = xpl = ypl = 0;
  mapw = map.width;
  maph = map.height;
  tanimate = millis();
}

void draw() {
  background(0);
  
  int panimate = millis() - tanimate;
  if (panimate > 200) {
    animate();
    tanimate = millis();
  }
  
  CameraX = l - 640 / 2;
  if (CameraX < 0) CameraX = 0;
  if (CameraX > map.width - 640) CameraX = map.width - 640;
  
  CameraY = t - 480 / 2;
  if (CameraY < 0) CameraY = 0;
  if (CameraY > map.height - 480) CameraY = map.height - 480;
  
  image(map, 0 - CameraX, 0 - CameraY, map.width, map.height, 0, 0, map.width, map.height);
  if(ypl != 0 || xpl != 0){
    l += xpl;
    t += ypl;
    if(l % 32 == 0 && t % 32 == 0){
      ruch = false;
      ypl = xpl = 0; 
    }
  }
  image(character, l - (character.width / 4 - 32) - CameraX, t - (character.height / 4 - 32) - CameraY, (character.width / 4), (character.height / 4), kx, ky, kx + (character.width / 4), ky + (character.height / 4));
  image(npc, 32 * 5 - CameraX, 32 * 5 - 16 - CameraY, 32, 48, 0, 0, 32, 48);
  text("(" + y + "; " + x + ")", 10, 10);
}

void keyPressed(){
  println(key);
  if(ruch == false){
    if(key == 's' && y < maph / 32){
      ypl = 1;
      y++;
      ruch = true;
      ky = 0;
      if(animate1 == 0){
        animate1 = 1;
        animate2 = 0;
        animate3 = 0;
        animate4 = 0;
      }
    }
    if(key == 'w' && y > 1){
      ypl = -1; 
      y--;
      ruch = true;
      ky = (character.height / 4) * 3;
      if(animate2 == 0){
        animate2 = 1;
        animate1 = 0;
        animate3 = 0;
        animate4 = 0;
      }
    }
    if(key == 'a' && x > 1){
      x--;
      xpl = -1;
      ruch = true;
      ky = (character.height / 4);
      if(animate3 == 0){
        animate3 = 1;
        animate1 = 0;
        animate2 = 0;
        animate4 = 0;
      }
    }
    if(key == 'd' && x < mapw / 32){
      x++;
      xpl = 1;
      ruch = true;
      ky = (character.height / 4) * 2;
      if(animate4 == 0){
        animate4 = 1;
        animate1 = 0;
        animate2 = 0;
        animate3 = 0;
      }
    }
  }
}
