#include <iostream>
#include "robot.h"
/*
 * Kalven Schraut
 * Shane Ong
 * Mitchell luhm
 * Eugene Yu
 *
 * The Position and the angle were not initilized so whateve memory was allocated
 * happened to have some value that were interpretted as those outputted values.
 *
 * The robot class didn't compile originally due to a difference in the function
 * names of set_position_xy and get_position_xy in the header and the cpp file
 *
 * The hal robot didn't pass in the correct parameter position in the constructor. In order for
 * the angle to be used since all parameters before have to be initilized.
	
 */
int main() {
	Robot rosy_robot;
  rosy_robot.Display();
  Robot c3po_robot(100, 100);
	Robot hal_robot(0, 0, 3.14);
	Robot eva_robot(-100,-100,-3.14/4.0);
	rosy_robot.Display();
	c3po_robot.Display();
	hal_robot.Display();
	eva_robot.Display();
}
