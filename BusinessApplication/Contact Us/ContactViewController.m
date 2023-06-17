//
//  ContactViewController.m
//  BusinessApplication
//
//  Created by Admin on 15/06/2023.
//

#import "ContactViewController.h"
#import "MapPin.h"
@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.button1.layer.cornerRadius =5;
    self.button2.layer.cornerRadius =5;
    self.button3.layer.cornerRadius =5;
    self.button4.layer.cornerRadius =5;
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;
    
    span.latitudeDelta =0.005;
    span.longitudeDelta =0.005;
    
    location.latitude = 40.7076681;
    location.longitude = -74.009271;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
    
    [[self navigationItem] setBackBarButtonItem: [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    //placed in this controller because its for this view
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)callUs:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:310666666"] options:@{} completionHandler:nil];
    
}

- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=40.7076681,-74.009271"] options:@{} completionHandler:nil];
}
@end
