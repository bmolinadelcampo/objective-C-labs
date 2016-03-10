//
//  main.c
//  CountDown
//
//  Created by Belén Molina del Campo on 29/02/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#include <stdio.h>


int main(int argc, const char * argv[]) {
    
    printf("Where should I start counting?");
    const char *input = readline(NULL);
    int startNumber = atoi (input);
   
    for (; startNumber>= 0 ; startNumber-=3){
        printf("%d\n", startNumber);
        if (startNumber % 5 == 0) {
            printf("Found one!\n");
        }
        
    }
    return 0;
}
