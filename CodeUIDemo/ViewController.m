//
//  ViewController.m
//  CodeUIDemo
//
//  Created by Daniel Vasquez Fernandez on 9/29/17.
//  Copyright © 2017 Daniel Vasquez Fernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UITextField* myTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //UITextField* myTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 40, 200, 50)];
    self.myTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 40, 200, 50)];
    self.myTextField.text = @"Test Text";
    UIButton* myButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 40, 100, 50)];
    [myButton setTitle:@"Magic 8 Ball" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(tappedButton:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setBackgroundColor:[UIColor redColor]];

    [self.view addSubview:self.myTextField];
    [self.view addSubview:myButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tappedButton:(UIButton*)sender{
    NSInteger number = arc4random() % 5;
    switch (number) {
        case 1:
            self.myTextField.text = @"No";
            break;
        case 2:
            self.myTextField.text = @"Yes";
            break;
        case 3:
            self.myTextField.text = @"Try Again";
            break;
        case 4:
            self.myTextField.text = @"Maybe";
            break;
        default:
            self.myTextField.text = @"You got default!";
            break;
    }
}

@end
