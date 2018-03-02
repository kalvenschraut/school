//
//  Duck.h
//
//  Created by Sarit Ghildayal on 1/24/15.
//  Copyright (c) 2015 Sarit Ghildayal. All rights reserved.
//

#ifndef DUCK_H_
#define DUCK_H_

#include <string>
#include <stdio.h>

class Duck {
public:
    // Constructors and Destructor
    Duck();
    Duck(std::string name);
    ~Duck() {
      printf("destroying duck\n");
    }
    // Mutators and Accessors
    void PerformQuack();
    std::string get_name() {return name_;}
    void set_name(std::string name ) {name_ = name;}
private:
    std::string name_;
};

#endif
