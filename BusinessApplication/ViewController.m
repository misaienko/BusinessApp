//
//  ViewController.m
//  BusinessApplication
//
//  Created by Admin on 09/06/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.button3.layer.cornerRadius = 5;
    self.button4.layer.cornerRadius = 5;
    self.button5.layer.cornerRadius = 5;
    
    [[self navigationItem] setBackBarButtonItem: [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
}


- (IBAction)contactUs:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
}

- (IBAction)aboutUs:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
}

- (IBAction)portfolio:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
}

- (IBAction)services:(id)sender {
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
}
@end
