//
//  DivisionQuestion.m
//  Lab 3
//
//  Created by Douglas Gois on 2020-03-27.
//  Copyright © 2020 Douglas Gois. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
    - (instancetype) init {
        [self generateQuestion];
        return self;
    }

    - (void) generateQuestion {
        [super generateQuestion];
        self.problem = [NSString stringWithFormat:@"%ld / %ld ?", self.num1, self.num2];
        self.solution = self.num1 / self.num2;
        
    }
@end
