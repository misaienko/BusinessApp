//
//  EmailViewController.h
//  BusinessApplication
//
//  Created by Admin on 15/06/2023.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailViewController : UIViewController
<MFMailComposeViewControllerDelegate, UITextViewDelegate>
// last one used to dismiss the keyboard

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;

@property (weak, nonatomic) IBOutlet UIButton *button1;

- (IBAction)send:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;


@end

NS_ASSUME_NONNULL_END
