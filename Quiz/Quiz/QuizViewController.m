//
//  QuizViewController.m
//  Quiz
//
//  Created by SeanXiang on 9/20/16.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()
@property (nonatomic, weak) IBOutlet UILabel* questionLable;
@property (nonatomic, weak) IBOutlet UILabel* answerLable;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray* questions;
@property (nonatomic, copy) NSArray* answers;

@end

@implementation QuizViewController
- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    return self;
}
- (IBAction)showAnswer:(id)sender
{
    NSString* answer = self.answers[self.currentQuestionIndex];
    
    self.answerLable.text = answer;
}

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex ++;
    
    if (self.currentQuestionIndex == [self.questions count])
    {
        self.currentQuestionIndex = 0;
    }
    
    NSString* question = self.questions[self.currentQuestionIndex];
    
    self.questionLable.text = question;
    
    self.answerLable.text = @"???";
}
@end
