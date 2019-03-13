PImage bgImg, soilImg, lifeImg, groundhogImg, robotImg, soldierImg;
int A = floor(random(4)+1);

void setup() {
	size(640, 480, P2D);
	bgImg = loadImage("img/bg.jpg");
soilImg = loadImage("img/soil.png");
lifeImg = loadImage("img/life.png");
groundhogImg = loadImage("img/groundhog.png");
robotImg = loadImage("img/robot.png");
soldierImg = loadImage("img/soldier.png");

}

int soldierx=-80, soldiery=80+80*A, speedsoldierx=5,roboty=80+80*A;
float robotx=random(160,560);
float rayx=robotx, rayy=roboty+37, speedrayx=2;
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
 image(soldierImg,soldierx,soldiery);
soldierx+=speedsoldierx;
soldierx%=640;

//robot
image(robotImg,robotx,roboty);

//ray animation
stroke(255,0,0);
strokeWeight(10);
line(rayx,rayy,rayx+25,rayy);
rayx-=speedrayx;
rayx%=rayx+160;
}
