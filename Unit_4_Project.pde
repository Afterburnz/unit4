color beige = #ffe09e;
color black = #000000;
color white = #ffffff;
color red = #ff3845;
color lightBlue = #add2ff;
color brown = #bf8045;
color lightGreen =#61ff5c;
color skyBlue =#6c96d9;
color yellow =#ffff57;
color darkBrown = #6b3c05;

void setup(){
  size(1500,1000);
  
  background(skyBlue);
  int x,y;
  x=-100;
  y=0;
  fill(yellow);
  noStroke();
  circle(750,0,400);
  
  strokeWeight(2);
  while(x<1500){
    tower(x,y,1);
    x= x+1050;
    y= y-50;
  


}
}

void tower(float x, float y, float s){
  pushMatrix(); 
  translate(x,y);
  scale(s);
  
  float r,g,b;
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  
  frame(300,100,r,g,b,0);
  island(175,600);
  tree(random(175,225),500);
  tree(random(375,425),500);
  popMatrix();
}

  void frame(float x, float y, float r, float g, float b, float c){
  
    stroke(black);
    strokeWeight(2);
  
    while(c<10){
      r=random(0,255);
      g=random(0,255);
      b=random(0,255);
      fill(r,g,b);
      square(x,y,50);
      y=y+50;
      c++;
      
   
      
    }
  }
  
  void island(float x, float y){
    
    noStroke();
    
    fill(lightGreen);
    rect(x,y,300,50);
    fill(brown);
    rect(x+50,y+50,200,75);
    rect(x+100,y+125,100,100);
    rect(x+125,y+225,50,125);
  }
  
  void tree(float x,float y){
    
    noStroke();
    fill(darkBrown);
    rect(x,y,25,100);
    fill(30,random(100,200),0);
    rect(x,y,25,20);
    rect(x-25,y+20,75,20);
    rect(x-50,y+40,125,20);
  }
  
  
  
