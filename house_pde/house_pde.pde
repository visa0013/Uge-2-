Room[] house = new Room[6];


void setup() {
  size(800, 800);
  background(205);
  house[0] = new Room("Room", false, 100, 300);
  house[1] = new Room("Kitchen", false, 210, 300);
  house[2] = new Room("Livingroom", false, 320, 300);
  house[3] = new Room("Toilet", true, 100, 410);
  house[4] = new Room("Bedroom", false, 210, 410);
  house[5] = new Room("Bathroom", false, 320, 410);
}

void draw() {
  
  for (int i =0; i<house.length; i++) {
    house[i].drawRoof();
    house[i].drawRoom();
  }
  checkHouse();
}

void mouseClicked() {
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);
  for (int i =0; i<house.length; i++)
  {
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

void checkHouse() {
  boolean found=false;
  for (int i=0; i< house.length; i++) {
    if (house[i].getIsLightOn() == true) {
      println ("WOW turn off the light in the "+house[i].getRoomName());
      found = true;
    }
  }
  if (!found) {
    println("All right! You’r ready to go!");
  } else {
    println("you forgot something");
  }
}
