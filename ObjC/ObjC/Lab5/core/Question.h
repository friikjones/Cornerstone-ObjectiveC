//
//  Question.h
//  Lab 3
//
//  Created by Douglas Gois on 2020-03-26.
//  Copyright © 2020 Douglas Gois. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *problem;
@property (nonatomic) NSInteger solution;
@property (nonatomic, strong) NSDate *startTime, *endTime;
@property (nonatomic) NSInteger num1;
@property (nonatomic) NSInteger num2;

- (void)generateQuestion;
- (NSTimeInterval)timeToAnswer;

@end
