//
//  EmailViewController.m
//  BusinessApplication
//
//  Created by Admin on 15/06/2023.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.messageField.layer.cornerRadius =5;
    self.button1.layer.cornerRadius =5;
    
    self.navigationItem.title = @"Email Us";
    
    self.messageField.delegate = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissKeyboard:(id)sender {
    [self resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location ==NSNotFound) {
        return  YES;
    }
    
    [textView resignFirstResponder];
    
    return NO;
}
//all function dismiss keyboard when text entered

- (IBAction)send:(id)sender {
    
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc]init];
    
    [composer setMailComposeDelegate:self];
    
    // if users can send message load it if not dont
    if([MFMailComposeViewController canSendMail]) {
        [composer setToRecipients:@[@"yourcompany@gmail.com"]];
        [composer setSubject:@"Message from our company"];
        
        [composer setMessageBody:[NSString stringWithFormat:@"Name: %@ \nEmail: %@ \n\nMessage: %@", self.nameField.text,self.emailField,self.messageField.text] isHTML:NO];
        
        [self presentViewController:composer animated:YES completion:nil];
    }else{
        
        NSLog(@"Cant send mail");
        //doesnt show this message???
    }

}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    // dismisses this screnn and allows go back to app
}

@end
