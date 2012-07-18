//
//  YuebaPubMapViewController.m
//  Yueba
//
//  Created by gg iyak on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubMapViewController.h"

@interface YuebaPubMapViewController ()

@end

@implementation YuebaPubMapViewController

@synthesize mapView = _mapView;

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
    // Do any additional setup after loading the view.
    self.mapView.delegate = self;
    self.mapView.showsUserLocation = YES;
    MKUserLocation *location = self.mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location.location.coordinate, 500, 500);
    [self.mapView setRegion:region animated:NO];
    
    CLLocationCoordinate2D barPos;
    barPos.latitude = location.location.coordinate.latitude + 0.001;
    barPos.longitude = location.location.coordinate.longitude - 0.001;
    MKPointAnnotation *bar = [[MKPointAnnotation alloc] init];
    bar.coordinate = barPos;
    bar.title = @"丽莉马莲";
    [self.mapView addAnnotation:bar];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.mapView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation 
{
    self.mapView.centerCoordinate = userLocation.coordinate;
}

@end
