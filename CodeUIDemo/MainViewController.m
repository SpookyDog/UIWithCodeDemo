//
//  MainViewController.m
//  CodeUIDemo
//
//  Created by Daniel Vasquez Fernandez on 9/29/17.
//  Copyright © 2017 Daniel Vasquez Fernandez. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) UITextField* myTextField;
@property (strong, nonatomic) UILabel* label;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTextField = [[UITextField alloc] initWithFrame:CGRectMake(10.0f, 30.0f, 300.0f, 30.0f)];
    self.myTextField.delegate = self;
    
    self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    [self.view addSubview:self.myTextField];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    
    
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello World!";
    [self.view addSubview:self.label];
}

-(void)buttonPressed{
    //self.textField.text = self.label.text;
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
