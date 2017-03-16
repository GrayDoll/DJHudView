//
//  ViewController.m
//  DemoHudView
//
//  Created by 董杰 on 2017/3/16.
//  Copyright © 2017年 DexJay. All rights reserved.
//

#import "ViewController.h"
#import "BaseHudVIewPro.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BaseHudVIewPro *hudP = [BaseHudVIewPro sharedBaseHudVIewPro];
    [hudP showHud];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
