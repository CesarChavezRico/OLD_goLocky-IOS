//
//  GLHome.m
//  goLocky
//
//  Created by Chapo on 3/22/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import "GLHome.h"
#import "GLMapViewAnnotation.h"
#import "GLCustomCell.h"

@implementation GLHome
@synthesize mapView,lugares;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    //Map View
    self.mapView.delegate = self;
    CLLocationCoordinate2D location;
    location.latitude   = (double)31.880479;
    location.longitude  = (double) -102.302696;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 2000, 2000);
    
    [self.mapView setRegion:region animated:YES];
    for(int i = 0; i < 10; i++) {
        
        // puntos adicionales
        CGFloat latDelta = rand()*.035/RAND_MAX -.02;
        CGFloat longDelta = rand()*.03/RAND_MAX -.015;
        
        CGFloat newLat = location.latitude + latDelta;
        CGFloat newLon = location.longitude + longDelta;
        
        CLLocationCoordinate2D newCoord = {newLat, newLon};
        // Agregamos anotacion al map View
        GLMapViewAnnotation *newAnnotation = [[GLMapViewAnnotation alloc] initWithTitle:@"Random" andCoordinate:newCoord];
        [self.mapView addAnnotation:newAnnotation];
        
        [self.mapView addAnnotation:newAnnotation];
    }
    
    
    //Controller View
    
    imagenRest =[[NSArray alloc] initWithObjects:@"rest-1.jpg",@"r2.jpg",@"r3.jpg",@"r4.jpg", nil];
    nombreRest =[[NSArray alloc] initWithObjects:@"AppleBeas",@"Chili's",@"SmokeHouse",@"La Casona", nil];
    visitas    =[[NSArray alloc] initWithObjects:@"+ 50",@"+ 80",@"+ 10",@"+ 5", nil];
    recompensas=[[NSArray alloc] initWithObjects:@"10",@"20",@"30",@"40", nil];
    
    
    

}


- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
//    self.contentSubview.frame = CGRectMake(
//                                           0,
//                                           self.topLayoutGuide.length,
//                                           CGRectGetWidth(self.view.frame),
//                                           CGRectGetHeight(self.view.frame)
//                                           - self.topLayoutGuide.length
//                                           - self.bottomLayoutGuide.length
//                                           ); 
}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return [imagenRest count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    
    
    GLCustomCell *myCell = (GLCustomCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
    myCell.imagenRestaurante.image =[UIImage imageNamed:[imagenRest objectAtIndex:indexPath.item]];
    myCell.nombreRestaurante.text  =[nombreRest objectAtIndex:indexPath.item];
    myCell.numeroVisitas.text      =[visitas objectAtIndex:indexPath.item];
    myCell.recompensa.text         = [recompensas objectAtIndex:indexPath.item];
    return myCell;
}


- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
	MKAnnotationView *annotationView = [views objectAtIndex:0];
    
	id <MKAnnotation> mp = [annotationView annotation];
    
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 3000, 100);
	[mv setRegion:region animated:YES];
	
    [mv selectAnnotation:mp animated:YES];
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id)annotation {

    if([annotation isKindOfClass:[MKUserLocation class]]){
        //creamos PIN de ubicacion actual
        static NSString *identifier = @"Ubicacion Actual";
        MKAnnotationView * annotationView = (MKAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
        
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.image = [UIImage imageNamed:@"pin-map-red.png"];
        return annotationView;
    }
    

    static NSString *identifier = @"Lugares";
    MKAnnotationView * annotationView = (MKAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
   
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.image = [UIImage imageNamed:@"pin-map-blue.png"];
    return annotationView;
}







//actualiza ubicacion actual
//- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
//{
//    
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 3000, 800);
//    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
//    point.coordinate = userLocation.coordinate;
//    point.title = @"Estas Aqui";
//    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
//    
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)cambioView:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.mapView.hidden= YES;
            self.lugares.hidden = NO;
            break;
        case 1:
            
            self.mapView.hidden= NO;
            self.lugares.hidden = YES;
            
        default:
            break;
    }
}
@end
