//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            //Getting commands
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //Parsing to commandWords and mutableCommands
            NSMutableArray *mutableCommands = [inputString componentsSeparatedByString:@" "];
            
            //Getting first command and removing case sensitivity
            NSString *firstCommand = [mutableCommands firstObject];
            [mutableCommands removeObjectAtIndex:0];
            firstCommand = [firstCommand lowercaseString];
            
            //initializing size with default value and getting firstCommand
            PizzaSize size = large;
            NSString *sizeName = @"large";
            if([firstCommand isEqualToString: @"small"]){
                sizeName = @"small";
                size = small;
            }else if ([firstCommand isEqualToString:@"medium"]){
                sizeName = @"medium";
                size  = medium;
            }
            
            Pizza* newPizza = [restaurantKitchen makePizzaWithSize:size toppings:mutableCommands];
            if(newPizza){
                NSLog(@"Pizza created sucessfully");
                NSLog(@"Size %@", sizeName);
                NSLog(@"Toppings %@", mutableCommands);
            }else {
                NSLog(@"No Pizza was created");
            }
        }
    }
    return 0;
}

