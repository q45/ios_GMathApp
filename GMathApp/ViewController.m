//
//  ViewController.m
//  GMathApp
//
//  Created by Q on 3/19/14.
//  Copyright (c) 2014 wasatchCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>


@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	   
    _right = 0;
    _wrong = 0;
    
//    [self.getNumberButton setHidden:YES];
//    [self.getNumberButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    self.firstNumber.text = [NSString stringWithFormat:@"%i", [self randomNumber]];
    self.secondNumber.text = [NSString stringWithFormat:@"%i", [self randomNumber]];

    NSLog(@"frist number: %@", self.firstNumber.text);
    NSLog(@"second number: %@", self.secondNumber.text);
    
    int correct = [self correctAnswer];
    NSLog(@"correct answer %i", correct);

}


-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"TextFieldDidEndEditing");
  

}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"Textfield Did Begin Editing");
    _rocketNumber = [self.rocketNumberText.text intValue];
    
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    
        return YES;
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

   
    
    if ([self.userAnswer.text isEqualToString:[NSString stringWithFormat:@"%i", self.correctAnswer]]) {
        
        _right++;
        self.computerLabel.text = @"Way to Go!";
        self.userAnswer.text = @"";
        int first = self.randomNumber;
        int second = _rocketNumber;
        self.answer = first + second;
        
        self.firstNumber.text = [NSString stringWithFormat:@"%i", first];
        self.secondNumber.text = [NSString stringWithFormat:@"%i", second ];
        self.rightAnswerLabel.text = [NSString stringWithFormat:@"%i", _right];
        
        
    } else {
        _wrong++;
        self.wrongAnswerLabel.text = [NSString stringWithFormat:@"%i", _wrong];
        self.computerLabel.text = @"Try Again";
        self.userAnswer.text = @"";
        
    }
    
    [self.view endEditing:YES];
    
}



-(IBAction)getRandom:(id)sender
{
    self.firstNumber.text = [NSString stringWithFormat:@"%i", self.randomNumber];
    self.secondNumber.text = [NSString stringWithFormat:@"%i", self.randomNumber];
    NSLog(@"first number: %@", self.firstNumber.text);
    NSLog(@"Second number: %@", self.secondNumber.text);

    

}

-(int)correctAnswer
{
    
    NSLog(@"%@", self.firstNumber.text);
    NSLog(@"%@", self.secondNumber.text);
    
    return  [self.firstNumber.text intValue] + [self.secondNumber.text intValue];
}

-(int)randomNumber
{
    
    return arc4random_uniform(12);
}


@end
