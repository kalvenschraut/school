Work in groups of 2 or 3 -- but feel free to discuss this with others at your table. Engage in pair programming by having one person at the keyboard typing -- make it the person with the least C++ experience, and the other person(s) read the directions and guide the programming.

You will be making one submission via GitHub for your group. Make a directory in github called "exercises" (if you have not already). Make another directory called ex02 (or something similar) and place this folder inside of "exercises". Please share your work with your group when you are finished so they can also have a copy.

**__Place the names of everyone in your group at the top of main.cc.__**

**__As you encounter these questions, provide your answers at the top of main.cc__**

- Why did it display those values?
- Why did it not compile?
- What happened to hal?
- Why have members of a struct public instead of private?

### Demonstration of Class Definition in C++

<hr>
This first example makes use of the default constructor, but this is problematic due to initialization.

#### Robot.h

```C++
class Robot {
public:
  void MoveForward( int distance );
  void Display();
private:
  float direction_angle_;
  int position_[2];
};
```

#### Robot.cpp

```C++
void Robot::MoveForward(int distance) {
  position_[0] = position_[0] + distance*cos(direction_angle_);
  position_[1] = position_[1] + distance*sin(direction_angle_);
}

void Robot::Display() {
  cout << "Pos [" << position_[0] << " " << position_[1] << "]. angle "
  << direction_angle_ << endl;
}
```

#### main.cpp

In C++, _main()_ serves as the entry point to the program. It must exist to generate an executable.

```C++
#include "robot.h"
#include <iostream>

int main() {
  Robot rosy_robot;
  rosy_robot.Display();
}
```

You can compile the program using the provided makefile, then call the executable _robot_.

```
make
./robot
```

Why did it display those values?

<hr>
We will fix the initialization problem by adding "setters" and add some "getters" while we are at it.

#### Robot.h

```C++
class Robot {
public:
  void MoveForward( int distance );
  void Display();
  // setters and getters
  void set_position_xy( int x, int y);
  int* get_position_xy();
  void set_direction_angle_rad(float d);
  float get_direction_angle_rad();

private:
  float direction_angle_;
  int position[2]\_;
};
```

#### Robot.cpp

Adding the following to the source code.

```C++
// setters and getters
void Robot::set_position_xy_( int x, int y) {
  position_[0] = x;
  position_[1] = y;
}
int* Robot::get_position_xy_() {
  return position_;
}
void Robot::set_direction_angle_rad(float d) {
  direction_angle_ = d;
}
float Robot::get_direction_angle_rad() {
  return direction_angle_;
}
```

#### main.cpp

```C++
int main() {
  Robot rosy_robot;
  rosy_robot.set_position_xy(0,0);
  rosy_robot.set_direction_angle_rad(0);
  rosy_robot.Display();
}
```

<hr>
This is dangerous to require users to initialize. Let's fix this by forcing the user to provide initialization.

#### Adding to Robot.h

We can pass along an array, but let's not do that right now.

```C++
  Robot(int x, int y, float theta);
```


#### Adding to Robot.cpp

```C++
Robot(int x, int y, float theta) {
  position[0] = x;
  position[1] = y;
  directionAngle = theta;
}
```

Try to compile. What happened? Read the error message -- we are just about to fix this.

<hr>
This can be cumbersome for the user, let's give the user some options.

**__OPTION 1__**: Add a no-parameter constructor that initializes to reasonable values.

<hr>

#### Adding to robot.h

```C++
public:
  Robot();
```

#### Adding to robot.cpp

```C++
Robot::Robot() {
  position[0] = 0;
  position[1] = 0;
  directionAngle = 0;
}
```

#### Change main.cpp

```C++
int main() {
  Robot rosy_robot;
  rosy_robot.Display();
  Robot c3po_robot(10,20,2.8);
  c3po_robot.Display();
}
```
Now you can declare a robot by initializing none or all of the member variables.

**__OPTION 2__**: Add a constructor with a subset of the member variables.

#### Adding to robot.h

```C++
public:
  Robot();
  Robot(int x, int y);
  Robot(float theta);
```

Then you will add these definitions to robot.cpp. Let's see how we use them.

#### main.cpp

```C++
int main() {
  Robot rosy_robot;
  Robot c3po_robot(100,100);
  Robot hal_robot(0,0,3.14/2);
  Robot eva_robot(-100,-100,-3.14/4);
  rosy_robot.Display();
  c3po_robot.Display();
  hal_robot.Display();
  eva_robot.Display();
}
```

Looks like this when you run it ...

```
Pos [0 0]. angle 0
Pos [100 100]. angle 0
Pos [0 0]. angle 1.57
Pos [-100 -100]. angle -0.785
```

**__OPTION 3__**: (Probably the best) Create a single constructor that can take 0 to all member variable initializations.

Now we have to undo some of our work. We need only the one constructor, because we will add _default_ values.

#### robot.h

```C++
  Robot(int x=0, int y=0, float theta=0);
```

#### robot.cpp

```C++
Robot::Robot( int x, int y, float theta ) {
  position_[0] = x;
  position_[1] = y;
  direction_angle_ = theta;
}
```

#### main.cpp

There was no need to change anything in main from before. All of the various forms of constructors was captured in the one constructor with default arguments.

```C++
int main() {
  Robot rosy_robot;
  Robot c3po_robot(100,100);
  Robot hal_robot(3.14);
  Robot eva_robot(-100,-100,-3.14/4);
  rosy_robot.display();
  c3po_robot.display();
  hal_robot.display();
  eva_robot.display();
}
```

And it comes out like this ...
```
Pos [0 0]. angle 0
Pos [100 100]. angle 0
Pos [3 0]. angle 0
Pos [-100 -100]. angle -0.785
```

*__OOPS__*. What happened to hal? We specified an angle of 3.14, but that didn't work. Can you explain that?

<hr>
One more thing to improve our class definition ... an initializer list. But the array is special, so look at how it is initialized. This is not available in all versions of the compiler -- you need c++11 or higher. And the array has to be static.

```C++
Robot::Robot( int x, int y, float theta ) :
  position_{x,y}, direction_angle_(theta) {
}
```

<hr>
#### Position is awkward and prone to error. Let's fix that with a struct definition.

```
struct Position {
  int x;
  int y;
  Position(in_x=0,in_y=0) : x(in_x), y(in_y) {}
};
```

But now we have to change all of our code. Too bad we didn't think about this change before we started!

If we use a struct, we don't need setters and getters -- everything is public. Why do that?
