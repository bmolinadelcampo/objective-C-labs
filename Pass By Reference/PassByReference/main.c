//
//  main.c
//  PassByReference
//
//  Created by Belén Molina del Campo on 29/02/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#include <stdio.h>
#include <math.h>


void metersToFeetAndInches (double meters, unsigned int *feetPointer, double *inchesPointer){
    double rawFeet = meters * 3.281;
    
    if ( feetPointer != NULL) {
        unsigned int feet = (unsigned int) floor (rawFeet);
        printf("Storing %u to the address %p\n", feet, &feetPointer);
        *feetPointer = feet;
        
        if (inchesPointer != NULL) {
            double fractionalFoot = rawFeet - feet;
            double inches = fractionalFoot * 12.0;
            
            printf("Storing %f to the address %p\n", inches, &inchesPointer);
            *inchesPointer = inches;
        }
        
        
    } else {
        double inches = rawFeet * 12.0;
        
        printf("Storing %f to the address %p\n", inches, &inchesPointer);
        *inchesPointer = inches;
    }
    
    
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters , &feet, NULL);
    printf("Result is %d feet and %f inches", feet, inches);
    
    return 0;
}
