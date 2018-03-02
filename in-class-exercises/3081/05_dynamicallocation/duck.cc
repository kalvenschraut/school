//
//  Duck.cpp
//
//  Created by Sarit Ghildayal on 1/24/15.
//  Copyright (c) 2015 Sarit Ghildayal. All rights reserved.
//

#include "duck.h"

#include <iostream>

using std::cout;
using std::endl;

Duck::Duck() : name_("Duck") {

}

Duck::Duck(std::string name) : name_(name) {

}

void Duck::PerformQuack() {
    printf("Quack\n");
}
