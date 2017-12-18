Spaceship shuttlecock = new Spaceship();
Rocket flame = new Rocket();
Stars [] allstar = new Stars[200];
ArrayList <Asteroid> allsteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
boolean accelerating = false;
boolean turningCounterClockwise = false;
boolean turningClockwise = false;
boolean shooting = false;
int counter = 250;
int score = 0;
int health = 100;
int numberOfAsteroids = 5;
boolean win = false;
boolean lose = false;
boolean starting = true;
public void setup() 
{
  size(700, 500);
  PFont font;
  font = loadFont("SourceCodePro-Regular-30.vlw");
  textFont(font);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i] = new Stars();
  }
  for (int i = 0; i < numberOfAsteroids; i++)
  {
    allsteroids.add(new Asteroid());
  }
}
public void draw() 
{
  if (starting == true)
  {
    fill(100);
    rect(0, 0, width, height);
    fill(50);
    stroke(255);
    rect(width/2 - 35, height/2 + 10, 70, 40);
    noStroke();
    fill(255);
    textSize(40);
    text("Asteroids", width/2 - 100, height/2 -80);
    textSize(20);
    text("START", width/2 - 29, height/2 + 37);
    if (mouseX >= width/2-35 && mouseY >= height/2+10 && mouseX <= width/2+35 && mouseY <= height/2+50)
    { 
      fill(255,20,20);
      stroke(255);
      rect(width/2 - 35, height/2 + 10, 70, 40);
      noStroke();
      fill(255);
      textSize(20);
      text("START", width/2 - 29, height/2 + 37);
    }
    if (mousePressed && mouseX >= width/2-35 && mouseY >= height/2+10 && mouseX <= width/2+35 && mouseY <= height/2+50)
      starting = false;
  }
  else
  {
  background(0);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i].show();
  }
  for (int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
  }
  for (int i = 0; i < allsteroids.size(); i++)
  {
    allsteroids.get(i).show();
    allsteroids.get(i).move();
    if (dist(allsteroids.get(i).getX(), allsteroids.get(i).getY(), shuttlecock.getX(), shuttlecock.getY()) < 25)
      {
      allsteroids.remove(i);
      health -= 45;
      }
  }
//collisions
  for(int j = 0; j < bullets.size(); j++)
  {
    for(int i = 0; i < allsteroids.size(); i++)
      if(dist(bullets.get(j).getX(), bullets.get(j).getY(), allsteroids.get(i).getX(), allsteroids.get(i).getY()) < 20)
      {
        bullets.remove(j);
        //allsteroids.remove(i);
        if(allsteroids.get(i).getColor() == 255)
        {
          allsteroids.get(i).setColor(170);
        }
        else if (allsteroids.get(i).getColor() == 170)
        {
          allsteroids.get(i).setColor(85);
        }
        else
        {
          allsteroids.remove(i);
          score += 100;
        }
      break;
      }
  }
  shuttlecock.show();
  shuttlecock.move();
  flame.move();
  textSize(20);
  text("Score: " + score, width - 155, 25);
  text("Health: " + health + "%", width - 155, 55);
  if (accelerating == true){shuttlecock.accelerate(.2); flame.accelerate(.2); flame.show();}
  if (turningCounterClockwise == true){shuttlecock.turn(-5); flame.turn(-5);}
  if (turningClockwise == true){shuttlecock.turn(5); flame.turn(5);}
//  if (shooting == true){bullets.add(new Bullet(shuttlecock));}
  counter++;
  if (health < 0){health = 0;}
  if (score == numberOfAsteroids * 100)
    win = true;
  else if (health == 55 && score == (numberOfAsteroids - 1) * 100)
    win = true;
  else if (health == 10 && score == (numberOfAsteroids - 2) * 100)
    win = true;
  else
    win = false;
  if (health <= 0)
    lose = true;
  else
    lose = false;
  if (win == true)
  {
    fill(255);
    rect(0, 0, width, height);
    fill(0);
    textSize(40);
    text("YOU WIN", width/2 - 80, height/2 -80);
    textSize(20);
    text("Final Score: " + score, 50, 50);
  }
  if (lose == true)
  {
    fill(255,100,100);
    rect(0, 0, width, height);
    fill(255);
    textSize(40);
    text("YOU LOSE", width/2 - 95, height/2 -80);
    textSize(20);
    text("Final Score: " + score, 50, 50);
    //button
    fill(50);
    stroke(255);
    rect(width/2 - 50, height/2 + 10, 100, 40);
    noStroke();
    fill(255);
    textSize(20);
    text("RESTART", width/2 - 42, height/2 + 37);
    if (mouseX >= width/2-50 && mouseY >= height/2+10 && mouseX <= width/2+50 && mouseY <= height/2+50)
    { 
      fill(255,20,20);
      stroke(255);
      rect(width/2 - 50, height/2 + 10, 100, 40);
      noStroke();
      fill(255);
      textSize(20);
      text("RESTART", width/2 - 42, height/2 + 37);
    }
    if (mousePressed && mouseX >= width/2-35 && mouseY >= height/2+10 && mouseX <= width/2+35 && mouseY <= height/2+50)
    {  
      lose = false;
      restart();
    }
  }
}
}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){accelerating = true;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = true;}
  if (key == 'd' || key == 'D'){turningClockwise = true;}
  if (key == 'q' || key == 'Q')
	{
    int randPointDirection = (int)(Math.random()*360);
    int randSetX = (int)(Math.random()*700);
    int randSetY = (int)(Math.random()*500);
	  shuttlecock.setX(randSetX);
	  shuttlecock.setY(randSetY);
	  shuttlecock.setDirectionX(0);
	  shuttlecock.setDirectionY(0);
	  shuttlecock.setPointDirection(randPointDirection);
    flame.setX(randSetX);
    flame.setY(randSetY);
    flame.setDirectionX(0);
    flame.setDirectionY(0);
    flame.setPointDirection(randPointDirection);
	}
//  if (key == ' '){shooting = true;}
  if (key == ' ' && counter > 10)
    {
      bullets.add(new Bullet(shuttlecock));
      counter = 0;
    }
}
public void keyReleased()
{
  if (key == 'w' || key == 'W'){accelerating = false;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = false;}
  if (key == 'd' || key == 'D'){turningClockwise = false;}
//  if (key == ' '){shooting = false;}
}
public void restart()
{
  score = 0;
  health = 100;
  win = false;
  lose = false;
  starting = false;
  shuttlecock.setDirectionX(0);
  shuttlecock.setDirectionY(0);
  shuttlecock.setPointDirection(0);
  shuttlecock.setX(width/2);
  shuttlecock.setY(height/2);
  flame.setDirectionX(0);
  flame.setDirectionY(0);
  flame.setPointDirection(0);
  flame.setX(width/2);
  flame.setY(height/2);
  for (int i = allsteroids.size() - 1; i > 0; i--)
  {
    allsteroids.remove(i);
  }
  for (int i = 0; i < numberOfAsteroids; i++)
  {
    allsteroids.add(new Asteroid());
  }
}