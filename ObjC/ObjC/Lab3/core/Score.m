//
//  Score.m
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import "Score.h"

@implementation Score

- (instancetype) init{
    if (self = [super init]){
        self.rightCount = 0;
        self.wrongCount = 0;
        self.percentage = 0;
    }
    return self;
}

@end
