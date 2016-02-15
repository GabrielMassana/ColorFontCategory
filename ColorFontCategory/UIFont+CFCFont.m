//
//  UIFont+CFCFont.m
//  ColorFontCategory
//
//  Created by Gabriel Massana on 14/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "UIFont+CFCFont.h"

@implementation UIFont (CFCFont)

+ (UIFont *)cfc_alegreyaRegularFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"Alegreya-Regular"
                           size:size];
}

+ (UIFont *)cfc_alegreyaBlackFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"Alegreya-Black"
                           size:size];
}

+ (UIFont *)cfc_alegreyaBoldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:@"Alegreya-Bold"
                           size:size];
}

@end
