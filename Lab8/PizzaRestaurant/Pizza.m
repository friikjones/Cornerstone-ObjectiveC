//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by user169155 on 4/6/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza 

- (instancetype)initWithSize:(PizzaSize)size andToppings: (NSArray *)toppings
{
    self = [super init];
    if (self) {
        _size = large;
        _toppings = toppings;
    }
    return self;
}
@end
