//
//  Lab2.m
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "DateCalculator.h"
#import "Lab2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const float h = 4.6f;
        const float w = 3.7f;
        const float l = 2.8f;
        
        Box *box1 = [[Box alloc] initWithHeight: h, andWidth: w, andLength: l];
        
        NSLog(@"Manual calculation: %.2f", h * w * l);
        NSLog(@"Method calculation: %.2f", [box1 getVolume]);
        
        Box *box2 = [[Box alloc] initWithHeight: 9.1f andWidth: 7.3f andLength: 5.5f];
        NSLog(@"Box 1 can take box 2 for %d times", [box1 doesThisCanContainOthers: box2]);
        NSLog(@"Box 2 can take box 1 for %d times", [box2 doesThisCanContainOthers: box1]);
        
    }
    return 0;
} <Foundation/Foundation.h>
