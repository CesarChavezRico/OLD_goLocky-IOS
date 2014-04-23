//
//  GLHome.h
//  goLocky
//
//  Created by Chapo on 3/22/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface GLHome : UIViewController <MKMapViewDelegate, UICollectionViewDataSource,UICollectionViewDelegate >{
    NSArray *imagenRest, *nombreRest, *visitas, *recompensas;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UICollectionView *lugares;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)cambioView:(id)sender;



@end
