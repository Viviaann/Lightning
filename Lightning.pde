int startX = 0;
int startY =650;
int endX=0;
int endY=150;
int bugY=1;
int bugZ=1;
PImage doG;
PImage caT;
PImage bugA;
PImage bugB;
PImage blood;
void setup()
{
  size(900,700);
  strokeWeight(5);
  doG= loadImage("boltdog.png");
  caT = loadImage("mittens.png");
  bugB= loadImage ("hornet.png");
  bugA= loadImage ("hornet.png");

  blood = loadImage("blood.png");
  background(0,0,0);
};
void draw()
{
	image(doG,0,0,width,height);
	//image(caT,550,230,width/2.5,height/2.5);
	image(bugA,50,bugY,width/4,height/4);
	image(bugB,250,bugZ,width/4,height/4);
	bugY = bugY+2;
	if (bugY> 650){
		bugY=0;
	};
	bugZ = bugZ+3;
	if (bugZ> 650){
		bugZ=0;
	};
	//image(blood,550,200,width/4,height/4);

stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
while(endX<900){
 endX=  startX + (int)(Math.random()*10);
 endY= startY+(int)(Math.random()*19-9);
 line(startY,startX,endY,endX);
 
 startX=endX;
 startY=endY;

}
if (endY>=550 && startY<=600)
{
	//image(blood, 550,bugY,width/4,height/4);
	bugA = blood;
};
if (startY>=600 && endY<=650)
{
	
	bugB = blood;
};

};

void mousePressed()
{
startX = 0;
startY =(int)(Math.random()*500);
endX=0;
endY=850;
};

