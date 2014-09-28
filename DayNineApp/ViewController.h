//
//  ViewController.h
//  DayNineApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldTwo;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *btnButton;
- (IBAction)tappedButton:(id)sender;

@end

