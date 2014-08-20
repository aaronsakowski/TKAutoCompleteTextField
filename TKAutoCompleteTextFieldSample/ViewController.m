//
//  ViewController.m
//  TKAutoCompleteTextField
//
//  Created by 北川達也 on 2014/08/10.
//  Copyright (c) 2014年 Tatsuya Kitagawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textField.suggestions = [self resourse];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)resourse
{
    static dispatch_once_t onceToken;
    static NSArray *__instance = nil;
    dispatch_once(&onceToken, ^{
        __instance = [self loadArray];
    });
    return __instance;
}

- (NSArray *)loadArray
{
    return [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"NYY" ofType:@"plist"]];
}

@end
