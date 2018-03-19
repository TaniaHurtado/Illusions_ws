
//First illusion variables
int current = 1, illusions = 7;
int depthStop;
int isometryCount;
float globalAngle;

//Second illusion variables
int secondQuadrantPosition = 100;
int forthQuadrantPosition = 400;
boolean separateEllipses = false;

//Third illusion variables
int patternSeperationX = 100;
int patternSeperationY = 100;

//Fourth illusion variables
int a,b,i,x,y;
boolean active = true;

//Six illusion variables
PGraphics pg2;
PImage img;

//Seven illusion variables
float x1=1;



void setup() {
  size(500, 500, P2D);
  smooth();
  noStroke();
  
  globalAngle = 0.0;
  isometryCount = 6;
  depthStop = 2;
  pg2 = createGraphics(640,200);
  
}

void draw() {
  
  
  pushStyle();  
  fill(128, 255, 128, 32);

  switch(current) {
  case 1:
    background(0);
    recurse(width/2, height/2, height/4, 0.0, 0);
    globalAngle += .01;
    
    text("Recursion Depth: " + depthStop, 10, 20);
    break;
    // implement from here. Don't forget to add break for each case
  case 2:
    illusory();
    break;
   case 3:
    third();
    break;
  case 4:
    fourth();
    break;
  case 5:
    Bulging_Checkerboard();
    break;
  case 6: 
    bananas();
    break;
  case 7:
    otra();
    break;
  }
  popStyle();
}

void keyPressed() {
  if (key == ' ')
    current = current < illusions ? current+1 : 1;
}


//First illusion -> Hidden patterns
void recurse(float posX, float posY, float rad, float ang, int depth) {
  if (depth < depthStop) {
    float angleSegment = TWO_PI/isometryCount;   // Separation angle between figures
    for (int i=0; i < isometryCount; i++) {      //render [isimetryCount] number of figures
      float newRad = rad/2;                      
      float newAng = ang + i*angleSegment - globalAngle;
      float newX = cos(newAng)*rad + posX;
      float newY = sin(newAng)*rad + posY;
      recurse(newX, newY, newRad, newAng, depth + 1);
    }
  }
  else
    if(rad < 2) ellipse(posX, posY, 4.0, 4.0);
    else  ellipse(posX, posY, rad*2.0, rad*2.0);
}


void mouseReleased() {
  depthStop++;
  if (depthStop >= 7) depthStop = 1;
}

//Second illusion illusory square
void illusory(){
  background(0);
  rectMode(CENTER);
  stroke(255);
  noFill();
  rect(250, 250, 150, 150);
  
  if (secondQuadrantPosition>=165) {
    separateEllipses = true;
  }
  if (secondQuadrantPosition==100) {
    separateEllipses = false;
  }
  if (separateEllipses == false) {
    secondQuadrantPosition++;
    forthQuadrantPosition--;
  }
  else {
    secondQuadrantPosition--;
    forthQuadrantPosition++;
  }
  noStroke();
  //Large ellipses
  
  fill(100);
  ellipse(secondQuadrantPosition, 250, 100, 100);//left
  ellipse(250, secondQuadrantPosition, 100, 100);//up
  ellipse(forthQuadrantPosition, 250, 100, 100);//right
  ellipse(250, forthQuadrantPosition, 100, 100);//down
  
  //small ellipses
  fill(210);
  ellipse(secondQuadrantPosition+190, 250, 20, 20);//R
  ellipse(250, secondQuadrantPosition+190, 20, 20);//D
  ellipse(forthQuadrantPosition-190, 250, 20, 20);//l
  ellipse(250, forthQuadrantPosition-190, 20, 20);//U
}
void third(){
  for(int i = 0; i < width/patternSeperationX+1; i++){
      for(int j = 0; j < height/patternSeperationY+1; j++){
        pushMatrix();
        translate(i*patternSeperationX, j*patternSeperationY);
        function();
        popMatrix();
      }
  fill(255);
 int a= 0;
 int b= 550;

 while(a<500){
   ellipse(a,b,4,8);
   ellipse(a,b,8,4);

   a= a+50;
   b= b-50;
 }
 //complete loop//
 ellipse(500,50,4,8);
 ellipse(500,50,8,4);
 ellipse(0,0,8,4);
 ellipse(0,0,4,8);

 ellipse(150,0,4,8);
 ellipse(100,50,4,8);
 ellipse(50,100,4,8);
 ellipse(0,150,4,8);

 ellipse(0,250,4,8);
 ellipse(50,200,4,8);
 ellipse(100,150,4,8);
 ellipse(150,100,4,8);
 ellipse(200,50,4,8);
 ellipse(250,0,4,8);

 ellipse(0,300,4,8);
 ellipse(50,250,4,8);
 ellipse(100,200,4,8);
 ellipse(150,150,4,8);
 ellipse(200,100,4,8);
 ellipse(250,50,4,8);
 ellipse(300,0,4,8);

ellipse(0,400,4,8);
 ellipse(50,350,4,8);
 ellipse(100,300,4,8);
 ellipse(150,250,4,8);
 ellipse(200,200,4,8);
 ellipse(250,150,4,8);
 ellipse(300,100,4,8);
 ellipse(350,50,4,8);
 ellipse(400,0,4,8);
 ellipse(350,50,8,4);
 ellipse(400,0,8,4);

 ellipse(150,0,8,4);
 ellipse(100,50,8,4);
 ellipse(50,100,8,4);
 ellipse(0,150,8,4);

 ellipse(0,250,8,4);
 ellipse(50,200,8,4);
 ellipse(100,150,8,4);
 ellipse(150,100,8,4);
 ellipse(200,50,8,4);
 ellipse(250,0,8,4);

 ellipse(0,300,8,4);
 ellipse(50,250,8,4);
 ellipse(100,200,8,4);
 ellipse(150,150,8,4);
 ellipse(200,100,8,4);
 ellipse(250,50,8,4);
 ellipse(300,0,8,4);


ellipse(0,400,8,4);
 ellipse(50,350,8,4);
 ellipse(100,300,8,4);
 ellipse(150,250,8,4);
 ellipse(200,200,8,4);
 ellipse(250,150,8,4);
 ellipse(300,100,8,4);


 ellipse(0,650,4,8);
 ellipse(50,600,4,8);
 ellipse(100,550,4,8);
 ellipse(150,500,4,8);
 ellipse(200,450,4,8);
 ellipse(250,400,4,8);
 ellipse(300,350,4,8);
 ellipse(350,300,4,8);
 ellipse(400,250,4,8);
 ellipse(450,200,4,8);
 ellipse(500,150,4,8);
 ellipse(0,650,8,4);
 ellipse(50,600,8,4);
 ellipse(100,550,8,4);
 ellipse(150,500,8,4);
 ellipse(200,450,8,4);
 ellipse(250,400,8,4);
 ellipse(300,350,8,4);
 ellipse(350,300,8,4);
 ellipse(400,250,8,4);
 ellipse(450,200,8,4);
 ellipse(500,150,8,4);

  ellipse(50,650,8,4);
 ellipse(100,600,8,4);
 ellipse(150,550,8,4);
 ellipse(200,500,8,4);
 ellipse(250,450,8,4);
 ellipse(300,400,8,4);
 ellipse(350,350,8,4);
 ellipse(400,300,8,4);
 ellipse(450,250,8,4);
 ellipse(500,200,8,4);
 ellipse(550,150,8,4);
 ellipse(0,700,8,4);

 ellipse(0,700,8,4);
 ellipse(50,650,4,8);
 ellipse(100,600,4,8);
 ellipse(150,550,4,8);
 ellipse(200,500,4,8);
 ellipse(250,450,4,8);
 ellipse(300,400,4,8);
 ellipse(350,350,4,8);
 ellipse(400,300,4,8);
 ellipse(450,250,4,8);
 ellipse(500,200,4,8);
 ellipse(550,150,4,8);

 ellipse(150,650,4,8);
 ellipse(100,700,8,4);
 ellipse(100,700,4,8);
 ellipse(0,700,4,8);
 ellipse(250,650,4,8);
 ellipse(200,600,4,8);
 ellipse(250,550,4,8);
 ellipse(300,500,4,8);
 ellipse(350,450,4,8);
 ellipse(400,400,4,8);
 ellipse(450,350,4,8);
 ellipse(500,300,4,8);
 ellipse(550,250,4,8);
 ellipse(600,200,4,8);
 ellipse(650,150,4,8);
 ellipse(100,700,8,4);
 ellipse(150,650,8,4);
 ellipse(200,600,8,4);
 ellipse(250,550,8,4);
 ellipse(300,500,8,4);
 ellipse(350,450,8,4);
 ellipse(400,400,8,4);
 ellipse(450,350,8,4);
 ellipse(500,300,8,4);
 ellipse(550,250,8,4);
 ellipse(600,200,8,4);
 ellipse(650,150,8,4);
 ellipse(0,800,8,4);
 ellipse(0,800,4,8);
 ellipse(50,750,8,4);
 ellipse(50,750,4,8);

 ellipse(500,450,4,8);
 ellipse(450,500,4,8);
 ellipse(400,550,4,8);
 ellipse(350,600,4,8);
 ellipse(300,650,4,8);
 ellipse(250,700,4,8);
 ellipse(200,750,4,8);
 ellipse(150,800,4,8);
 ellipse(100,850,4,8);
 ellipse(50,900,4,8);
 ellipse(0,950,4,8);
 //
 ellipse(500,450,8,4);
 ellipse(450,500,8,4);
 ellipse(400,550,8,4);
 ellipse(350,600,8,4);
 ellipse(300,650,8,4);
 ellipse(250,700,8,4);
 ellipse(200,750,8,4);
 ellipse(150,800,8,4);
 ellipse(100,850,8,4);
 ellipse(50,900,8,4);
 ellipse(0,950,8,4);


 ellipse(500,550,8,4);
 ellipse(450,600,8,4);
 ellipse(400,650,8,4);
 ellipse(350,700,8,4);
 ellipse(300,750,8,4);
 ellipse(250,800,8,4);
 ellipse(200,850,8,4);
 ellipse(150,900,8,4);
 ellipse(100,950,8,4);
 ellipse(50,1000,8,4);

 //
 ellipse(500,550,4,8);
 ellipse(450,600,4,8);
 ellipse(400,650,4,8);
 ellipse(350,700,4,8);
 ellipse(300,750,4,8);
 ellipse(250,800,4,8);
 ellipse(200,850,4,8);
 ellipse(150,900,4,8);
 ellipse(100,950,4,8);
 ellipse(50,1000,4,8);

 ellipse(500,600,4,8);
 ellipse(450,650,4,8);
 ellipse(400,700,4,8);
 ellipse(350,750,4,8);
 ellipse(300,800,4,8);
 ellipse(250,850,4,8);
 ellipse(200,900,4,8);
 ellipse(150,950,4,8);
 ellipse(100,1000,4,8);
 //
 ellipse(500,600,8,4);
 ellipse(450,650,8,4);
 ellipse(400,700,8,4);
 ellipse(350,750,8,4);
 ellipse(300,800,8,4);
 ellipse(250,850,8,4);
 ellipse(200,900,8,4);
 ellipse(150,950,8,4);
 ellipse(100,1000,8,4);

 ellipse(500,700,4,8);
 ellipse(450,750,4,8);
 ellipse(400,800,4,8);
 ellipse(350,850,4,8);
 ellipse(300,900,4,8);
 ellipse(250,950,4,8);
 ellipse(200,1000,4,8);

 //
 ellipse(500,700,8,4);
 ellipse(450,750,8,4);
 ellipse(400,800,8,4);
 ellipse(350,850,8,4);
 ellipse(300,900,8,4);
 ellipse(250,950,8,4);
 ellipse(200,1000,8,4);

 ellipse(500,850,4,8);
 ellipse(450,900,4,8);
 ellipse(400,950,4,8);
 ellipse(350,1000,4,8);

 //
 ellipse(500,850,8,4);
 ellipse(450,900,8,4);
 ellipse(400,950,8,4);
 ellipse(350,1000,8,4);

 ellipse(500,950,4,8);
 ellipse(450,1000,4,8);

 //
 ellipse(500,950,8,4);
 ellipse(450,1000,8,4);

}
}
void function(){
    noStroke();
    fill(80);
    rect(0,0,50,50);
    rect(50,50,50,50);
    fill(150);
    rect(50,0,50,50);
    rect(0,50,50,50);

    fill(0);
    ellipse(0,0,4,8);
    ellipse(0,0,8,4);
    ellipse(50,50,4,8);
    ellipse(50,50,8,4);
    ellipse(50,0,4,8);
    ellipse(50,0,8,4);
    ellipse(100,50,8,4);
    ellipse(100,50,4,8);
    ellipse(0,50,8,4);
    ellipse(0,50,4,8);
}

void fourth(){
  frame.setSize(302,302);
  background(1);
  a=302;b=152;
  for(i=0;i<=b*b;i++){
  x=i%b;
  y=i/b;
  stroke(255*sin(0.01*frameCount*sqrt((sq(a/2-x)+sq(a/2-y)))));
  point(x,y);
  point(a-x,y);
  point(x,a-y);
  point(a-x,a-y);
  }
}

void Bulging_Checkerboard() {
  surface.setSize(800,800);
  background(0);
  noStroke();
  smooth();
  fill(255);
  int des=0;
  float tamCuadro=61;
  for (int i=0; i<height; i += tamCuadro*2) {
    for (int j=0; j<width; j += tamCuadro) {
      if (des==0) {
        des+=tamCuadro;
      } else {
        des-=tamCuadro;
      }
      quad(i+des, j, i+tamCuadro+des, j, i+tamCuadro+des, j+tamCuadro, i+des, j+tamCuadro);
    }
  }
  float margen=2 ;
  float tamCuadro2=13;
  float diferencia=tamCuadro-tamCuadro2-margen*2;
  float[] cuadro1={margen, margen, tamCuadro2+margen, margen, tamCuadro2+margen, tamCuadro2+margen, margen, tamCuadro2+margen};
  float[] cuadro2={diferencia+margen, margen, diferencia+tamCuadro2+margen, margen, diferencia+tamCuadro2+margen, tamCuadro2+margen, diferencia+margen, tamCuadro2+margen};
  float[] cuadro3={margen, diferencia+margen, tamCuadro2+margen, diferencia+margen, tamCuadro2+margen, diferencia+tamCuadro2+margen, margen, diferencia+tamCuadro2+margen};
  float[] cuadro4={diferencia+margen, diferencia+margen, diferencia+tamCuadro2+margen, diferencia+  margen, diferencia+tamCuadro2+margen, diferencia+tamCuadro2+margen, diferencia+margen, diferencia+tamCuadro2+margen};

  if (active) {
    fill(255);
    int i2, i3, i4;
    for (int j=0; j<5; j++) {
      for (int i=1; i<=5-j; i+=2) {

        i2=5-j;
        i3=12-i-j;
        i4=12-i2;
        //Superior izquierda
        quad(cuadro2[0]+tamCuadro*(i+j), cuadro2[1]+tamCuadro*i2, cuadro2[2]+tamCuadro*(i+j), cuadro2[3]+tamCuadro*i2, cuadro2[4]+tamCuadro*(i+j), cuadro2[5]+tamCuadro*i2, cuadro2[6]+tamCuadro*(i+j), cuadro2[7]+tamCuadro*i2);
        quad(cuadro3[0]+tamCuadro*(i+j), cuadro3[1]+tamCuadro*i2, cuadro3[2]+tamCuadro*(i+j), cuadro3[3]+tamCuadro*i2, cuadro3[4]+tamCuadro*(i+j), cuadro3[5]+tamCuadro*i2, cuadro3[6]+tamCuadro*(i+j), cuadro3[7]+tamCuadro*i2);
        //Superior derecha
        quad(cuadro1[0]+tamCuadro*i3, cuadro1[1]+tamCuadro*i2, cuadro1[2]+tamCuadro*i3, cuadro1[3]+tamCuadro*i2, cuadro1[4]+tamCuadro*i3, cuadro1[5]+tamCuadro*i2, cuadro1[6]+tamCuadro*i3, cuadro1[7]+tamCuadro*i2);
        quad(cuadro4[0]+tamCuadro*i3, cuadro4[1]+tamCuadro*i2, cuadro4[2]+tamCuadro*i3, cuadro4[3]+tamCuadro*i2, cuadro4[4]+tamCuadro*i3, cuadro4[5]+tamCuadro*i2, cuadro4[6]+tamCuadro*i3, cuadro4[7]+tamCuadro*i2);
        //Inferior izquierda
        quad(cuadro3[0]+tamCuadro*i4, cuadro3[1]+tamCuadro*i3, cuadro3[2]+tamCuadro*i4, cuadro3[3]+tamCuadro*i3, cuadro3[4]+tamCuadro*i4, cuadro3[5]+tamCuadro*i3, cuadro3[6]+tamCuadro*i4, cuadro3[7]+tamCuadro*i3);
        quad(cuadro2[0]+tamCuadro*i4, cuadro2[1]+tamCuadro*i3, cuadro2[2]+tamCuadro*i4, cuadro2[3]+tamCuadro*i3, cuadro2[4]+tamCuadro*i4, cuadro2[5]+tamCuadro*i3, cuadro2[6]+tamCuadro*i4, cuadro2[7]+tamCuadro*i3);
        //Inferior derecha
        quad(cuadro1[0]+tamCuadro*i2, cuadro1[1]+tamCuadro*i3, cuadro1[2]+tamCuadro*i2, cuadro1[3]+tamCuadro*i3, cuadro1[4]+tamCuadro*i2, cuadro1[5]+tamCuadro*i3, cuadro1[6]+tamCuadro*i2, cuadro1[7]+tamCuadro*i3);
        quad(cuadro4[0]+tamCuadro*i2, cuadro4[1]+tamCuadro*i3, cuadro4[2]+tamCuadro*i2, cuadro4[3]+tamCuadro*i3, cuadro4[4]+tamCuadro*i2, cuadro4[5]+tamCuadro*i3, cuadro4[6]+tamCuadro*i2, cuadro4[7]+tamCuadro*i3);
      }
    }

    fill(0);
    for (int j=0; j<4; j++) {
      for (int i=2; i<=5-j; i+=2) {

        i2=5-j;
        i3=12-i-j;
        i4=12-i2;
        //Superior izquierda
        quad(cuadro2[0]+tamCuadro*(i+j), cuadro2[1]+tamCuadro*i2, cuadro2[2]+tamCuadro*(i+j), cuadro2[3]+tamCuadro*i2, cuadro2[4]+tamCuadro*(i+j), cuadro2[5]+tamCuadro*i2, cuadro2[6]+tamCuadro*(i+j), cuadro2[7]+tamCuadro*i2);
        quad(cuadro3[0]+tamCuadro*(i+j), cuadro3[1]+tamCuadro*i2, cuadro3[2]+tamCuadro*(i+j), cuadro3[3]+tamCuadro*i2, cuadro3[4]+tamCuadro*(i+j), cuadro3[5]+tamCuadro*i2, cuadro3[6]+tamCuadro*(i+j), cuadro3[7]+tamCuadro*i2);
        //Superior derecha
        quad(cuadro1[0]+tamCuadro*i3, cuadro1[1]+tamCuadro*i2, cuadro1[2]+tamCuadro*i3, cuadro1[3]+tamCuadro*i2, cuadro1[4]+tamCuadro*i3, cuadro1[5]+tamCuadro*i2, cuadro1[6]+tamCuadro*i3, cuadro1[7]+tamCuadro*i2);
        quad(cuadro4[0]+tamCuadro*i3, cuadro4[1]+tamCuadro*i2, cuadro4[2]+tamCuadro*i3, cuadro4[3]+tamCuadro*i2, cuadro4[4]+tamCuadro*i3, cuadro4[5]+tamCuadro*i2, cuadro4[6]+tamCuadro*i3, cuadro4[7]+tamCuadro*i2);
        //Inferior izquierda
        quad(cuadro3[0]+tamCuadro*i4, cuadro3[1]+tamCuadro*i3, cuadro3[2]+tamCuadro*i4, cuadro3[3]+tamCuadro*i3, cuadro3[4]+tamCuadro*i4, cuadro3[5]+tamCuadro*i3, cuadro3[6]+tamCuadro*i4, cuadro3[7]+tamCuadro*i3);
        quad(cuadro2[0]+tamCuadro*i4, cuadro2[1]+tamCuadro*i3, cuadro2[2]+tamCuadro*i4, cuadro2[3]+tamCuadro*i3, cuadro2[4]+tamCuadro*i4, cuadro2[5]+tamCuadro*i3, cuadro2[6]+tamCuadro*i4, cuadro2[7]+tamCuadro*i3);
        //Inferior derecha
        quad(cuadro1[0]+tamCuadro*i2, cuadro1[1]+tamCuadro*i3, cuadro1[2]+tamCuadro*i2, cuadro1[3]+tamCuadro*i3, cuadro1[4]+tamCuadro*i2, cuadro1[5]+tamCuadro*i3, cuadro1[6]+tamCuadro*i2, cuadro1[7]+tamCuadro*i3);
        quad(cuadro4[0]+tamCuadro*i2, cuadro4[1]+tamCuadro*i3, cuadro4[2]+tamCuadro*i2, cuadro4[3]+tamCuadro*i3, cuadro4[4]+tamCuadro*i2, cuadro4[5]+tamCuadro*i3, cuadro4[6]+tamCuadro*i2, cuadro4[7]+tamCuadro*i3);
      }
    }
    for (int i=2; i<4; i++) {

      int j=5-i;
      i2=13-i;
      i3=i+7;
      quad(cuadro2[0]+tamCuadro*i, cuadro2[1]+tamCuadro*j, cuadro2[2]+tamCuadro*i, cuadro2[3]+tamCuadro*j, cuadro2[4]+tamCuadro*i, cuadro2[5]+tamCuadro*j, cuadro2[6]+tamCuadro*i, cuadro2[7]+tamCuadro*j);
      quad(cuadro3[0]+tamCuadro*i, cuadro3[1]+tamCuadro*j, cuadro3[2]+tamCuadro*i, cuadro3[3]+tamCuadro*j, cuadro3[4]+tamCuadro*i, cuadro3[5]+tamCuadro*j, cuadro3[6]+tamCuadro*i, cuadro3[7]+tamCuadro*j);
      j=12-i;
      quad(cuadro2[0]+tamCuadro*i3, cuadro2[1]+tamCuadro*j, cuadro2[2]+tamCuadro*i3, cuadro2[3]+tamCuadro*j, cuadro2[4]+tamCuadro*i3, cuadro2[5]+tamCuadro*j, cuadro2[6]+tamCuadro*i3, cuadro2[7]+tamCuadro*j);
      quad(cuadro3[0]+tamCuadro*i3, cuadro3[1]+tamCuadro*j, cuadro3[2]+tamCuadro*i3, cuadro3[3]+tamCuadro*j, cuadro3[4]+tamCuadro*i3, cuadro3[5]+tamCuadro*j, cuadro3[6]+tamCuadro*i3, cuadro3[7]+tamCuadro*j);
      j=i+7;
      quad(cuadro1[0]+tamCuadro*i, cuadro1[1]+tamCuadro*j, cuadro1[2]+tamCuadro*i, cuadro1[3]+tamCuadro*j, cuadro1[4]+tamCuadro*i, cuadro1[5]+tamCuadro*j, cuadro1[6]+tamCuadro*i, cuadro1[7]+tamCuadro*j);
      quad(cuadro4[0]+tamCuadro*i, cuadro4[1]+tamCuadro*j, cuadro4[2]+tamCuadro*i, cuadro4[3]+tamCuadro*j, cuadro4[4]+tamCuadro*i, cuadro4[5]+tamCuadro*j, cuadro4[6]+tamCuadro*i, cuadro4[7]+tamCuadro*j);

      quad(cuadro1[0]+tamCuadro*j, cuadro1[1]+tamCuadro*i, cuadro1[2]+tamCuadro*j, cuadro1[3]+tamCuadro*i, cuadro1[4]+tamCuadro*j, cuadro1[5]+tamCuadro*i, cuadro1[6]+tamCuadro*j, cuadro1[7]+tamCuadro*i);
      quad(cuadro4[0]+tamCuadro*j, cuadro4[1]+tamCuadro*i, cuadro4[2]+tamCuadro*j, cuadro4[3]+tamCuadro*i, cuadro4[4]+tamCuadro*j, cuadro4[5]+tamCuadro*i, cuadro4[6]+tamCuadro*j, cuadro4[7]+tamCuadro*i);
    }
    int l;
    for (int k=1; k<=5; k++) {
      fill(0);
      if (k%2==0)
        fill(255);
      quad(cuadro2[0]+tamCuadro*k, cuadro2[1]+tamCuadro*6, cuadro2[2]+tamCuadro*k, cuadro2[3]+tamCuadro*6, cuadro2[4]+tamCuadro*k, cuadro2[5]+tamCuadro*6, cuadro2[6]+tamCuadro*k, cuadro2[7]+tamCuadro*6);
      quad(cuadro4[0]+tamCuadro*k, cuadro4[1]+tamCuadro*6, cuadro4[2]+tamCuadro*k, cuadro4[3]+tamCuadro*6, cuadro4[4]+tamCuadro*k, cuadro4[5]+tamCuadro*6, cuadro4[6]+tamCuadro*k, cuadro4[7]+tamCuadro*6);
      l=k+6;
      quad(cuadro1[0]+tamCuadro*l, cuadro1[1]+tamCuadro*6, cuadro1[2]+tamCuadro*l, cuadro1[3]+tamCuadro*6, cuadro1[4]+tamCuadro*l, cuadro1[5]+tamCuadro*6, cuadro1[6]+tamCuadro*l, cuadro1[7]+tamCuadro*6);
      quad(cuadro3[0]+tamCuadro*l, cuadro3[1]+tamCuadro*6, cuadro3[2]+tamCuadro*l, cuadro3[3]+tamCuadro*6, cuadro3[4]+tamCuadro*l, cuadro3[5]+tamCuadro*6, cuadro3[6]+tamCuadro*l, cuadro3[7]+tamCuadro*6);

      quad(cuadro3[0]+tamCuadro*6, cuadro3[1]+tamCuadro*k, cuadro3[2]+tamCuadro*6, cuadro3[3]+tamCuadro*k, cuadro3[4]+tamCuadro*6, cuadro3[5]+tamCuadro*k, cuadro3[6]+tamCuadro*6, cuadro3[7]+tamCuadro*k);
      quad(cuadro4[0]+tamCuadro*6, cuadro4[1]+tamCuadro*k, cuadro4[2]+tamCuadro*6, cuadro4[3]+tamCuadro*k, cuadro4[4]+tamCuadro*6, cuadro4[5]+tamCuadro*k, cuadro4[6]+tamCuadro*6, cuadro4[7]+tamCuadro*k);

      quad(cuadro1[0]+tamCuadro*6, cuadro1[1]+tamCuadro*l, cuadro1[2]+tamCuadro*6, cuadro1[3]+tamCuadro*l, cuadro1[4]+tamCuadro*6, cuadro1[5]+tamCuadro*l, cuadro1[6]+tamCuadro*6, cuadro1[7]+tamCuadro*l);
      quad(cuadro2[0]+tamCuadro*6, cuadro2[1]+tamCuadro*l, cuadro2[2]+tamCuadro*6, cuadro2[3]+tamCuadro*l, cuadro2[4]+tamCuadro*6, cuadro2[5]+tamCuadro*l, cuadro2[6]+tamCuadro*6, cuadro2[7]+tamCuadro*l);
    }
  }
}

void bananas(){
  surface.setSize(640,200);
  pg2.beginDraw();
  img = loadImage("Data/bananas.png");  
  pg2.background(img);
  //pg2.stroke(255);
  pg2.endDraw();
 image(pg2, 5, 5);
}

void otra(){
  surface.setSize(400, 330);
  smooth();
  background(255);

  for (int i = 0; i < 30;i++) {
    noStroke();
    fill(0);
    rect(i * 20, 0, 10, height);
  }

  if (mousePressed == true) {
    background(150);
  }

  for (int q = 0; q < 4; q++) {
    if (q % 2 == 0) {
      fill(0);
    }
    else {
      fill(255);
    }
    rect(x1, q * 90 + 5, 20, 50);
  }

  if (keyPressed == true) {
    stroke(255, 0, 0);
    strokeWeight(3);
    noFill();
    rect(x1, 5, 21, 320);
  }
  
  x1 += 0.5;
 
  if (x1 > width + 10) {
    x1 = 0;
  }

}