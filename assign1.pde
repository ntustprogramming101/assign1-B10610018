PImage bgImg, soilImg, lifeImg, groundhogImg, robotImg, soldierImg;

void setup() {
	size(640, 480, P2D);
	bgImg = loadImage("img/bg.jpg");
soilImg = loadImage("img/soil.png");
lifeImg = loadImage("img/life.png");
groundhogImg = loadImage("img/groundhog.png");
robotImg = loadImage("img/robot.png");
soldierImg = loadImage("img/soldier.png");

}

int soldierX=-80, soldierY=80+80*floor(random(4)+1), speedSoldierX=3,robotY=80+80*floor(random(4)+1);
float robotX=random(160,560);
float laserX=robotX+25, laserY=robotY+37, speedLaserX=2,laserLength;
void draw() {
  // background
  image(bgImg,0,0);
 
 //soil
 image(soilImg,0,160);
 
 //life
 image(lifeImg,10,10);
 image(lifeImg,80,10);
 image(lifeImg,150,10);
 
 // grass
 noStroke();
 fill(124, 204, 25);
 rect(0,145,640,15);
 
 // groundhog
 image(groundhogImg,280,80);
 
 //sun
 stroke(255, 255, 0);
 strokeWeight(5);
 fill(253, 184, 19);
 ellipse(590,50,120,120);
 
 //soldier animation
 image(soldierImg,soldierX,soldierY);
soldierX+=speedSoldierX;
soldierX%=640;

//robot
image(robotImg,robotX,robotY);

//laser
stroke(255,0,0);
strokeWeight(10);
line(laserX,laserY,laserX+laserLength,laserY);

//laser animation
if(laserX>=robotX-160){
laserX-=speedLaserX;
laserLength+=speedLaserX;
if(laserLength>=40){
laserLength = 40;
}
}
else{
laserX=robotX+25;
laserLength=0;
}
}
