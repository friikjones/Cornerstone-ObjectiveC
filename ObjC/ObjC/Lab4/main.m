	//
//  main.m
//  ObjC
//
//  Created by user169155 on 3/27/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatilization.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      NSString *name = @"Daniel";
      NSLog(@"%@", [name addPigLatin]);
      name = @"Anna";
      NSLog(@"%@", [name addPigLatin]);
      name = @"Chile";
      NSLog(@"%@", [name addPigLatin]);
  }
  return 0;
}
