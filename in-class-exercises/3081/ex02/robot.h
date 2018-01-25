#ifndef EX02_ROBOT_CLASSES_H_
#define EX02_ROBOT_CLASSES_H_

class Robot {
  public:
		Robot(int x=0, int y=0, float theta=0.0);

    void MoveForward( int distance );
    void Display();
		// getters
		int* get_position_xy();
		float get_direction_angle_rad();
		// setters
		void set_position_xy(int x, int y);
		void set_direction_angle_rad(float d);
  private:
    float direction_angle_;
    int position_[2];
  };

#endif /* EX02_ROBOT_CLASSES_H_ */
