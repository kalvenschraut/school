#include <math.h>
#include <iostream>
#include "robot.h"

using std::cout;
using std::endl;

Robot::Robot(int x, int y, float theta) {
	position_[0] = x;
	position_[1] = y;
	direction_angle_ = theta;
}
void Robot::MoveForward(int distance) {
  position_[0] = position_[0] + distance*cos(direction_angle_);
  position_[1] = position_[1] + distance*sin(direction_angle_);
}

void Robot::Display() {
  cout
  << "Pos [" << position_[0] << " " << position_[1] << "]. angle "
  << direction_angle_ << endl;
}
// getters
int* Robot::get_position_xy() {
	return position_;
}
float Robot::get_direction_angle_rad() {
	return direction_angle_;
}
// setters
void Robot::set_position_xy( int x, int y) {
	position_[0] = x;
	position_[1] = y;
}

void Robot::set_direction_angle_rad(float d) {
	direction_angle_ = d;
}

