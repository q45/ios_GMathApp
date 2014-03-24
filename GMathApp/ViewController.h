//
//  ViewController.h
//  GMathApp
//
//  Created by Q on 3/19/14.
//  Copyright (c) 2014 wasatchCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *firstNumber;
@property (strong, nonatomic) IBOutlet UILabel *secondNumber;
@property (strong, nonatomic) IBOutlet UITextField *userAnswer;
@property (strong, nonatomic) IBOutlet UILabel *wrongAnswerLabel;
@property (strong, nonatomic) IBOutlet UILabel *rightAnswerLabel;
@property (strong, nonatomic) IBOutlet UITextField *rocketNumberText;
@property (strong, nonatomic) IBOutlet UIButton *getNumberButton;

@property int rocketNumber;
@property int right;
@property int wrong;
@property int number;
@property int number2;
@property int answer;



@property (strong, nonatomic) IBOutlet UILabel *computerLabel;


-(IBAction)getRandom:(id)sender;

-(int)randomNumber;
-(int)correctAnswer;




@end
