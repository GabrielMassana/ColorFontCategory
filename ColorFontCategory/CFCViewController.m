//
//  ViewController.m
//  ColorFontCategory
//
//  Created by Gabriel Massana on 14/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "CFCViewController.h"

#import "UIColor+CFCColor.h"
#import "UIFont+CFCFont.h"
#import "PureLayout.h"

@interface CFCViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;
@property (nonatomic, strong) UILabel *informationLabel;

@end

@implementation CFCViewController

#pragma mark - ViewLifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.subtitleLabel];
    [self.view addSubview:self.informationLabel];
    
    [self updateViewConstraints];
}

#pragma mark - Subviews

- (UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [UILabel newAutoLayoutView];
        _titleLabel.textColor = [UIColor cfc_radicalRed];
        _titleLabel.font = [UIFont cfc_alegreyaBoldFontWithSize:20.0f];
        _titleLabel.text = @"Title";
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _titleLabel;
}

- (UILabel *)subtitleLabel
{
    if (!_subtitleLabel)
    {
        _subtitleLabel = [UILabel newAutoLayoutView];
        _subtitleLabel.textColor = [UIColor cfc_outerSpace];
        _subtitleLabel.font = [UIFont cfc_alegreyaBlackFontWithSize:18.0f];
        _subtitleLabel.text = @"Subtitle";
        _subtitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _subtitleLabel;
}

- (UILabel *)informationLabel
{
    if (!_informationLabel)
    {
        _informationLabel = [UILabel newAutoLayoutView];
        _informationLabel.textColor = [UIColor cfc_brightSun];
        _informationLabel.font = [UIFont cfc_alegreyaRegularFontWithSize:12.0f];
        _informationLabel.text = @"Information Information Information Information Information Information Information Information Information Information Information Information Information Information";
        _informationLabel.textAlignment = NSTextAlignmentCenter;
        _informationLabel.numberOfLines = 0;
    }
    
    return _informationLabel;
}

#pragma mark - Constraints

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    
    /*----------------------*/
    
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeTop
                                      withInset:40.0f];
    
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    
    [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeRight];
    
    
    /*----------------------*/
    
    [self.subtitleLabel autoPinEdge:ALEdgeTop
                             toEdge:ALEdgeBottom
                             ofView:self.titleLabel
                         withOffset:10.0f];
    
    [self.subtitleLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    
    [self.subtitleLabel autoPinEdgeToSuperviewEdge:ALEdgeRight];
    
    /*----------------------*/
    
    [self.informationLabel autoPinEdge:ALEdgeTop
                                toEdge:ALEdgeBottom
                                ofView:self.subtitleLabel
                            withOffset:20.0f];
    
    [self.informationLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    
    [self.informationLabel autoPinEdgeToSuperviewEdge:ALEdgeRight];

}

@end
