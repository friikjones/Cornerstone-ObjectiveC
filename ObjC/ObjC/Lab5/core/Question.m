//
//  Question.m
//  Lab 3
//
//  Created by Douglas Gois on 2020-03-26.
//  Copyright © 2020 Douglas Gois. All rights reserved.
//

#import "Question.h"

@implementation Question
- (NSTimeInterval)timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    _num1 = arc4random_uniform(100) + 1;
    _num2 = arc4random_uniform(100) + 1;
    _startTime = [NSDate date];
}
@end
