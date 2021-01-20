//lav et rum //<>// //<>// //<>//
//Room house = new Room("Room", false, 100, 300);
Room[] house = new Room[6];


void setup() {
  size(800, 800);
  background(205);
  house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("Kitchen", false, 200, 300);
  house[2] = new Room("Dying room", false, 300, 300);
  house[3] = new Room("Toilet", false, 100, 400);
  house[4] = new Room("Bedroom", false, 200, 400);
  house[5] = new Room("Bathroom", false, 300, 400);
}

void draw() {
  // tegn taget
  fill(50);
  triangle(50, 290, 250, 150, 450, 290);
  // tegn rum
  for(int i = 0; i < house.length;i++){ 
      house[i].drawRoom();
}
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);
  for(int i = 0; i < house.length;i++){

  // find ud af om vi tænder eller slukker lyset
  if (house[i].isRoomClicked(mouseX, mouseY))
    if (house[i].getIsLightOn()) {
      house[i].setLight(false);
      text("Turning off the light in "+house[i].getRoomName(), 100, 700);
    } else {
      house[i].setLight(true);
      text("Turning on the light in "+house[i].getRoomName(), 100, 700);
    }
}
}
