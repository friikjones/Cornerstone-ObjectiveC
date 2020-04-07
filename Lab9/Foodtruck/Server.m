//
//  Cashier.m
//  Foodtruck
//
//  Created by user169155 on 4/7/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Server.h"

@implementation Server

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 1.5;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 2.5;
    } else {
        return 0;
    }
}

@end
