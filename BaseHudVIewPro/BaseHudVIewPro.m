//
//  BaseHudVIewPro.m
//  DemoSecodMonthVersion
//
//  Created by 董杰 on 2017/3/16.
//  Copyright © 2017年 Heyqun. All rights reserved.
//

#import "BaseHudVIewPro.h"

@interface BaseHudVIewPro()

@property(nonatomic, strong) UIView *bgView;

@end

static BaseHudVIewPro *hud = nil;
@implementation BaseHudVIewPro

+(BaseHudVIewPro *)sharedBaseHudVIewPro
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (hud == nil) {
            hud = [[BaseHudVIewPro alloc] init];
            [hud reLayoutSubViews];
        }
    });
    return hud;
}

-(void)reLayoutSubViews
{
    self.bounds = CGRectMake(0, 0, 180, 180);
    self.center = [UIApplication sharedApplication].keyWindow.center;
    self.backgroundColor = [UIColor purpleColor];
    
//    [self addSubview:self.mIndicatorView];
    self.mIndicatorView.bounds = CGRectMake(0, 0, 100, 100);
    self.mIndicatorView.center = CGPointMake(CGRectGetWidth(self.frame)/2., CGRectGetHeight(self.frame)/2.);
}

-(void)showHud
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self.bgView];

    [self addSubview:self.mIndicatorView];
    [window addSubview:self];
    
    [self.mIndicatorView startAnimating];
}

-(void)hideHud
{
    [self.mIndicatorView stopAnimating];
    
    [self.bgView removeFromSuperview];
    [self removeFromSuperview];
    for (UIView *subV in self.subviews) {
        [subV removeFromSuperview];
    }
}

#pragma mark - Action
-(void)tapTheView
{
    [self hideHud];
}

#pragma mark - Property
-(UIView *)bgView
{
    if (!_bgView) {
        _bgView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _bgView.backgroundColor = [[UIColor clearColor] colorWithAlphaComponent:0.2];
        _bgView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tapTheV = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTheView)];
        [_bgView addGestureRecognizer:tapTheV];
    }
    return _bgView;
}

-(UIActivityIndicatorView *)mIndicatorView
{
    if (!_mIndicatorView) {
        _mIndicatorView = [[UIActivityIndicatorView alloc] init];
        _mIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        _mIndicatorView.transform = CGAffineTransformMakeScale(1.2, 1.2);
    }
    return _mIndicatorView;
}

@end
