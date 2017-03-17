//
//  ViewController.m
//  SFJScrollLabelDemo
//
//  Created by 沙缚柩 on 2017/3/17.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import "ViewController.h"
#import "SFJScrollLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SFJScrollLabel *scrollL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _scrollL.text = @"Do any additional setup after";
    _scrollL.font = [UIFont systemFontOfSize:20];
    _scrollL.textColor = [UIColor orangeColor];
    _scrollL.speed = 2;
    
    [NSTimer scheduledTimerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
       _scrollL.text = @"Do any additional setup after loading the view, typically from a nib.";
    }];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
