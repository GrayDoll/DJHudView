//
//  BaseHudVIewPro.h
//  DemoSecodMonthVersion
//
//  Created by 董杰 on 2017/3/16.
//  Copyright © 2017年 Heyqun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseHudVIewPro : UIView

@property(nonatomic, strong) UIActivityIndicatorView *mIndicatorView;

+(BaseHudVIewPro *)sharedBaseHudVIewPro;

-(void)reLayoutSubViews;
-(void)showHud;
-(void)hideHud;


@end
