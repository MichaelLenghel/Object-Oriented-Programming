class Mover
{
 PVector location;
 PVector velocity;
 PVector acceleration;
 float maxSpeed;
 
 Mover()
 {
  location = new PVector(width / 2, height / 2);
  velocity = new PVector(0, 0);
  acceleration = new PVector(0, 0);
  maxSpeed = 10;
 }
 
 void update()
 {
   PVector mouse = new PVector(mouseX, mouseY);
   mouse.sub(location);
   mouse.setMag(0.5);
   acceleration = mouse;
   //acceleration = PVector.random2D();
   
   velocity.add(acceleration);
   location.add(velocity);
   //Doesn't let it gety over 5
   velocity.limit(maxSpeed);
 }//end update
 
 void display()
 {
   ellipse(location.x, location.y, 40, 40);
 }//end display
 
 void edges()
 {
   if (location.x > width)
   {
    location.x =  0;
    location.x = location.x * -1;
   }
   
   if (location.x < 0)
   {
    location.x =  width ;
    location.x = location.x * -1;
   }
   
   if (location.y > height)
   {
    location.y =  0;
    location.y = location.y * -1;
   }
   
   if (location.y < 0)
   {
    location.x =  height;
    location.y = location.y * -1;
   }
 }//end fxn
}//end class mover