void setup()
{
  size(500,500);
  background(0);
  CubeW = width/8;
  CubeH = height/8;
  fill(0,0,255);
}

//10 across
int CubeW;
int CubeH;
boolean black;

void draw()
{
  black = true;
  int i = 0;
  int j = 0;
  for (i=0; i<width; i+=CubeW)
  {
    for (j=0; j<height; j+=CubeH)
    {
      if (black)
      {
        fill(0,0,255);
      }
      else
      {
        fill(0);
      }
      black= !black;
      rect(i,j, CubeW,CubeH);
    }
  }
}