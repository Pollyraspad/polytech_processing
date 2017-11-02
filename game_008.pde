int x=0, y=0, k=300, z=300, phase=1;
int win=0,loss=0;
void setup() {
  size(700,700);
  rectMode(CENTER);
}
void draw() {
  background(164,149,215);
  fill(0,0,0);  
  text("Win: "+win,10,20);
  text("Loss: "+loss,10,35);
  if(phase==1){
  if(mouseX>x){
    x+=7;
  }
  if(mouseY>y){
    y+=7;
  }
  if(mouseX<x){
    x-=7;
  }
  if(mouseY<y){
    y-=7;
  }
  fill(255,0,128);
  ellipse(x,y,25,25);
   if(x>k){
    k+=5;
  }
  if(y>z){
    z+=5;
  }
  if(x<k){
    k-=5;
  }
  if(y<z){
    z-=5;
  }
  fill(0,0,0);
  ellipse(k,z,25,25);

  if(dist(k,z,x,y)<6){
  phase=0;  
  }
 if(dist(300,300,x,y)<6){
  phase=2;  
  } 
  fill(0,255,255);
  ellipse(300,300,25,25);
 
  }
  if(phase==0){
  fill(0,0,0);  
  text("GAME OVER",310,350);
  if(mousePressed){
    phase=1;
    k=300;
    z=300;
    x=0;
    y=0; 
    loss++;
  }
  }
  if(phase==2){
  fill(0,0,0);  
  text("YOU WON",310,350);
  if(mousePressed){
    phase=1;
    k=300;
    z=300;
    x=0;
    y=0; 
    win++;
  }
  }
}