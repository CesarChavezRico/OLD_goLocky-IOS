//
//  GLMapViewAnnotation.m
//  goLocky
//
//  Created by Chapo on 3/24/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import "GLMapViewAnnotation.h"
#import "GLMapViewAnnotation.h"

@implementation GLMapViewAnnotation

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
    title = ttl;
	coordinate = c2d;
	return self;
}

@end