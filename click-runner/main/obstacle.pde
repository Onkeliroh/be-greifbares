class obstacle
{
  int bottomX;
  int bottomY;
  int weight;
  
  //FORM parameters
  //t = triangle
  //r = rectangle
  //l = veritcal line
  char form;

  obstacle(int x, int y, int w, char f)
  {
    bottomX = x;
    bottomY = y;
    weight = w;
    form = f;
    
    println("Creatin obstacle: " + bottomX + " " + bottomY + " " + weight + " " + form);
  }
  
  void draw_obstacle()
  {
    switch (form)
    {
      case 't':
        triangle(bottomX,bottomY,bottomX+weight,bottomY,bottomX+(weight/2),bottomY-weight);
        break;
      case 'r':  
        rect(bottomX,bottomY,weight,-weight);
         break;
      case 'l':
        line(bottomX,bottomY,bottomX,bottomY-weight);
        break;
    }
  }
  
  char get_form()
  {
    return form;
  }
  
  int get_posX()
  {
    return bottomX;
  }
  
  int get_posY()
  {
    return bottomY;
  }
  
  int get_weight()
  {
    return weight;
  }
}
