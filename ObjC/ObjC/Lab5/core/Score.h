//
//  Score.h
//  Lab 3
//
//  Created by Douglas Gois on 2020-03-27.
//  Copyright © 2020 Douglas Gois. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Score : NSObject
@property (nonatomic) NSInteger rightCount;
@property (nonatomic) NSInteger wrongCount;
@property (nonatomic) float percentage;
@end
