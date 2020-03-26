//
//  Lab2.m
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import "Lab2.h"

@implementation Box

// Initializer
- (instancetype) initWithHeight: (float) height andWidth: (float) width andLength: (float) length {
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    
    return self;
}

- (float) getVol {
    return self.height * self.width * self.length;
}

@end
