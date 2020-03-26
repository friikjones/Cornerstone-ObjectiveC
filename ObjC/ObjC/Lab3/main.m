//
//  main.m
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "core/Addition.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) { maxLength = 255; }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    // turn cstring -> NSString
    // NSString.stringWithUTF8String(inputchars)
    //         .stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet());
    return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Maths!");
        
        while (YES) {
            Addition *q = [Addition new];
            NSLog(@"%@", q.problem);
            NSString *strInput = getUserInput(255, @"\nEnter your Answer: ('q' to quit)");
            NSString *targetString = [NSString stringWithFormat:@"%li", q.solution];
            if ([strInput isEqualToString:@"q"]) { break; }
            else if  ([strInput isEqualToString:targetString]) {
                NSLog(@"Right!");
            }else{
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
