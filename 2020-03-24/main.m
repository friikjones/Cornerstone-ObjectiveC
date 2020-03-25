//
//  main.m
//  Lab2
//
//  Created by Derrick Park on 3/24/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

/*
  .h (header file - public interface)
  .m (implementation file - your implementation)
 */
 
#import <Foundation/Foundation.h>
#import "DateCalculator.h"

int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    // Default initializer
    // - DateCalculator *calc1 = [DateCalculator new];
    DateCalculator *calc = [[DateCalculator alloc] init];
    calc.myAge = 30.2;
    NSLog(@"%.1f", calc.myAge);
    //    [DateCalculator sayHelloWith:@"How are you?" andName:@"Derrick"];
    
    DateCalculator *calc2 = [[DateCalculator alloc] initWithMyAge:60 andName:@"Robert"];
    if ([calc2 canDatePersonWithAge:20]) {
      NSLog(@"Yes");
    } else {
      NSLog(@"No");
    }
    
    // Note: Senging a message to nil does not crash!
    // In Java lingo => "Calling a methodon a null object does not throw a NullPointerException!"
    DateCalculator *calc3 = nil;
    NSLog(@"%d", [calc3 canDatePersonWithAge:30]);
    NSString *str = nil;
    NSLog(@"%@", [str uppercaseString]);

  [pool drain];
  return 0;
}
