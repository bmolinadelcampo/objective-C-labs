//
//  main.c
//  remainingAngle
//
//  Created by Belén Molina del Campo on 29/02/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#include <stdio.h>

float remainingAngle (float firstAngle, float secondAngle){
    float thirdAngle = 180 - firstAngle - secondAngle;
    
    return thirdAngle;
}

int main(int argc, const char * argv[]) {
    
    float angleAInDegrees = 30;
    float angleBInDegrees = 60;
    
    float angleCInDegrees = remainingAngle(angleAInDegrees, angleBInDegrees);
    printf("The value of the remaining angle is %.2f degrees", angleCInDegrees);
    
    return 0;
}

