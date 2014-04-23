//
//  GLMapViewAnnotation.h
//  goLocky
//
//  Created by Chapo on 3/24/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface GLMapViewAnnotation : NSObject <MKAnnotation>{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}
@property(nonatomic,copy)NSString *title;
@property(nonatomic,readonly)CLLocationCoordinate2D coordinate;

-(id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d;




@end
