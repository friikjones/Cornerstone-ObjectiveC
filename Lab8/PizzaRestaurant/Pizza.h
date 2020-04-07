//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by user169155 on 4/6/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,PizzaSize){
    small,
    medium,
    large
};

@interface Pizza:NSObject

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize size;

-(instancetype) initWithSize:(PizzaSize)size andToppings: (NSArray *)Toppings;


@end
