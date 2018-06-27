void setup() 
{
  size(500,500);
}

void draw() 
{
    if(frameCount % 1 == 0)
    {
     background(random(0, 255), random(0, 255), random(0, 255)); 
    }//end if
  //No line
  stroke(255);
  fill(255);
  //point(mouseX, mouseY);
  //line(pmouseX, pmouseY, mouseX, mouseY);
  //ellipse(width / 2, height / 2, 100, 100);
  //ellipse(mouseX, mouseY, 100, 100);
  //println(mouseX + ":::" + mouseY);
  //Use modulous to get something to happen every second on frame count


   fill(255);
  rect(mouseX, mouseY, 20, 50);
  fill(255, 0, 0);
  arc(mouseX + 10, mouseY, 80, 80, PI / 1.1, 2.1 * PI, PIE); //0 is on the horrizontal. Clock wise. Half PI is bot, PI is on opposite side. PI and half is top, 2 PI isback at 0.
  fill(255);
  //Dots on mushroom
  ellipse(mouseX, mouseY - 30, 10, 10);
  ellipse(mouseX + 7, mouseY - 20, 10, 10);
  ellipse(mouseX + 20, mouseY - 7, 10, 10);
  ellipse(mouseX - 13, mouseY - 15, 10, 10);
}