//
//  ViewController.m
//  DayNineApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.txtFieldOne.delegate = self;
    self.txtFieldTwo.delegate = self;
    self.txtView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedButton:(id)sender {
}


- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField == self.txtFieldOne) {
        textField.text = @"Fuck really its here";
    }
}


- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    if (textField == self.txtFieldTwo &&
        [textField.text isEqualToString:@"No Change"]) {
        return NO;
    }
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    if (textField == self.txtFieldTwo &&
        [textField.text isEqualToString:@"done"]) {
        return NO;
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if (textView == self.txtView){
        NSLog(@"%lu", (unsigned long)[textView.text length]);
        NSLog(@"%lu", (unsigned long)range.length);
        NSLog(@"%lu", (unsigned long)[text length]);
        NSInteger newTextLength = [textView.text length] - range.length + [text length];
        if (newTextLength > 45) {
            return NO;
        }
    }
    return YES;
}


@end
