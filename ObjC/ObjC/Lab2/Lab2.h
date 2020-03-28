//
//  Lab2.h
//  ObjC
//
//  Created by user169155 on 3/26/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length;
- (float) getVol;

@end
