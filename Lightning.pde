int startX = 0;
int startY =150;
int endX=0;
int endY=150;
int bugY=1;
PImage doG;
PImage caT;
PImage bug;
PImage blood;
void setup()
{
  size(900,700);
  strokeWeight(5);
  doG= loadImage("boltdog.png");
  caT = loadImage("mittens.png");
  bug= loadImage ("hornet.png");
  blood = loadImage("blood.png");
  background(0,0,0);
};
void draw()
{
	image(doG,0,0,width,height);
	//image(caT,550,230,width/2.5,height/2.5);
	image(bug,550,bugY,width/4,height/4);
	bugY = bugY+2;
	if (bugY> 650){
		bugY=0;
	};

stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
while(endX<500){
 endX=  startX + (int)(Math.random()*10);
 endY= startY+(int)(Math.random()*19-9);
 line(startY,startX,endY,endX);
 
 startX=endX;
 startY=endY;

}
if (endY== 550 && endX==bugY)
{
	image(blood, 550,bugY,width/2,height/2);
};
};

void mousePressed()
{
startX = 0;
startY =(int)(Math.random()*500);
endX=0;
endY=750;
};

