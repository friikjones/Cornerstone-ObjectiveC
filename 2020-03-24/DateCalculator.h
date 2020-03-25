//
//  DateCalculator.h
//  Lab2
//
//  Created by Derrick Park on 3/24/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject

// property -> private instance var + getter + setter
@property (nonatomic, assign) float myAge;
@property (nonatomic, assign) NSString *name;

- (instancetype)initWithMyAge:(float) myAge andName:(NSString *) name;
- (BOOL) canDatePersonWithAge:(float) age;
+ (void) sayHelloWith:(NSString *) message andName:(NSString *) name;

@end
