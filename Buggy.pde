import java.util.Random;

Bug bug;

Random randGen = new Random();

void setup() {
 size(1000, 1000);
 bug = new Bug(width/2, height/2, Direction.RIGHT);
}

void draw() {
  background(150);

  if (randGen.nextBoolean()) {
    // do nothing
  } else {
    if (randGen.nextBoolean()) {
      bug.move();
    } else {
      if (randGen.nextBoolean()) {
        bug.turnRight();
      } else {
        bug.turnLeft();
      }
    }
  }
  bug.display();
}
