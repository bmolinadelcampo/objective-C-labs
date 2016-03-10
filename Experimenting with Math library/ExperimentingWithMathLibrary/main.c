//
//  main.c
//  ExperimentingWithMathLibrary
//
//  Created by Belén Molina del Campo on 29/02/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {

    long angle = 4;
    float sinOfAngle = sin (angle);
    
    printf("The sin of %ld is %f", angle, sinOfAngle);
    return 0;
}
