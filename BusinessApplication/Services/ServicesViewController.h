//
//  ServicesViewController.h
//  BusinessApplication
//
//  Created by Admin on 11/06/2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailImage;

@property (weak, nonatomic) IBOutlet UILabel *detailTitle;

@property (weak, nonatomic) IBOutlet UITextView *detailDescription;

@property (strong, nonatomic) NSArray *detailModal;
// reference this from Servicestableview controler to detail view
// strong - import info dynamicly

@end

NS_ASSUME_NONNULL_END
