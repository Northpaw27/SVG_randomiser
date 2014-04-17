
//Logo randomiser 1.0
//by Kyle Mcaslan 17/04/14
//for use under the Creative Commons Attribution-ShareAlike 4.0 International Public License
//defining varibles
//Pshape varibles for SVG files
PShape s;
PShape d;
PShape f;
PShape g;
PShape h;
PShape j;
//various varibles for random numbers
float rand;
float rand1;
float rand2;
float rand3;
float rand4;
float rand5;
float rand6;
float rand7;
float rand8;
float rand9;
float rand10;
float rand11;
float rand12;
//varibles for control
float val;
int val1;
int val2;
int time = 1;
long lastTime = 0;

//allow processing to save out pdfs
import processing.pdf.*;

//function to allow fullscreening. Pick true or false
boolean sketchFullScreen() {
  return true;
}

//Setup
void setup() {
  //canvas size. best defined as screen resolution.
  //to save as pdf   size( 1280, 800, PDF, "filename.pdf") *see last line*
  size(1280, 800);
  //begin counting milliseconds from start of program
  lastTime = millis();
  //define your SVG's. They need to be stored in the programs data folder - cmd K
  s = loadShape("bob1.svg");
  d = loadShape("bob2.svg");
  f = loadShape("bob3.svg");
  g = loadShape("bob4.svg");
  h = loadShape("bob5.svg");
  j = loadShape("bob6.svg");
  //pick the scale for your random numbers
  val1 = 300;
  val2 = 500;
  colorMode(HSB);
}

void draw() {
  //define how often the program should run - change 100 to whatever you like
  if ( millis() - lastTime > 100 ) {
    lastTime = millis();
    //backround colour white, change as needed
    background(255);

    //define arrays for rotation in degrees
    int[] words = { 
      0, 90, 180, 360, -180, -90
    };
    int index = int(random(words.length));
    int[] words1 = { 
      0, 90, 180, 360, -180, -90
    };
    int index1 = int(random(words1.length)); 
    int[] words2 = { 
      0, 90, 180, 360, -180, -90
    };
    int index2 = int(random(words2.length)); 
    int[] words3 = { 
      0, 90, 180, 360, -180, -90
    };
    int index3 = int(random(words3.length)); 
    int[] words4 = { 
      0, 90, 180, 360, -180, -90
    };
    int index4 = int(random(words4.length)); 
    int[] words5 = { 
      0, 90, 180, 360, -180, -90
    };
    int index5 = int(random(words5.length));

    //varible for scale - any number is good
    float scale = 350;

    //genrate the random varibles
    rand = random(val1, val2);
    rand1 = random(val1, val2);
    rand2 = random(val1, val2);
    rand3 = random(val1, val2);
    rand4 = random(val1, val2);
    rand5 = random(val1, val2);
    rand6 = random(val1, val2);
    rand7 = random(val1, val2);
    rand8 = random(val1, val2);
    rand9 = random(val1, val2);
    rand10 = random(val1, val2);
    rand11 = random(val1, val2);

    //rotate the shapes randomly according to the arrays above
    s.rotate(radians(words[index]));
    d.rotate(radians(words1[index1]));
    f.rotate(radians(words2[index2]));
    g.rotate(radians(words3[index3]));
    h.rotate(radians(words4[index4]));
    j.rotate(radians(words5[index5]));

    //randomise the position and scale of each shape :shape(s, x, y, x-scale, y-scale)
    shape(s, rand, rand1, scale, scale);
    shape(d, rand2, rand3, scale, scale);
    shape(f, rand4, rand5, scale, scale);
    shape(g, rand6, rand7, scale, scale);
    shape(h, rand8, rand9, scale, scale);
    shape(j, rand10, rand11, scale, scale);
    //add exit();  for pdf export
  }
}

