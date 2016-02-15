//
//  UIColor+CFCColor.m
//  ColorFontCategory
//
//  Created by Gabriel Massana on 14/2/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

#import "UIColor+CFCColor.h"

@implementation UIColor (CFCColor)

+ (UIColor *)cfc_radicalRed
{
    return [UIColor colorWithRed:255.0f / 255.0f
                           green:53.0f / 255.0f
                            blue:94.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)cfc_brightSun
{
    return [UIColor colorWithRed:45.0f / 255.0f
                           green:56.0f / 255.0f
                            blue:58.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)cfc_outerSpace
{
    return [UIColor colorWithRed:254.0f / 255.0f
                           green:211.0f / 255.0f
                            blue:60.0f / 255.0f
                           alpha:1.0f];
}

@end
