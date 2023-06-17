//
//  ContactViewController.h
//  BusinessApplication
//
//  Created by Admin on 15/06/2023.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

- (IBAction)directions:(id)sender;
- (IBAction)callUs:(id)sender;





@end

NS_ASSUME_NONNULL_END
