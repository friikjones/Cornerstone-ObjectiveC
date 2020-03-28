//
//  Addition.m
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import "Addition.h"

@implementation Addition

- (instancetype) init {
    if (self = [super init]) {
        NSInteger num1 = arc4random_uniform(100) + 1;
        NSInteger num2 = arc4random_uniform(100) + 1;
        
        self.problem = [NSString stringWithFormat:@"%ld + %ld ?", num1, num2];
        self.solution = num1 + num2;
    }
    
    return self;
}

@end
