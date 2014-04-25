//
//  OHMAppConstants.m
//  ohmage_ios
//
//  Created by Charles Forkish on 4/24/14.
//  Copyright (c) 2014 VPD. All rights reserved.
//

#import "OHMAppConstants.h"
#import "UIColor+Ohmage.h"

@implementation OHMAppConstants

+ (UIColor *)colorForRowIndex:(NSInteger)rowIndex
{
    rowIndex %= 6;
    UIColor *color = nil;
    switch (rowIndex) {
        case 0:
            color = [UIColor colorWithRed:75.0/255.0 green:188.0/255.0 blue:164.0/255.0 alpha:1.0];
            break;
        case 1:
            color = [UIColor colorWithRed:243.0/255.0 green:169.0/255.0 blue:71.0/255.0 alpha:1.0];
            break;
        case 2:
            color = [UIColor colorWithRed:239.0/255.0 green:92.0/255.0 blue:67.0/255.0 alpha:1.0];
            break;
        case 3:
            color = [UIColor colorWithRed:191.0/255.0 green:191.0/255.0 blue:191.0/255.0 alpha:1.0];
            break;
        case 4:
            color = [UIColor colorWithRed:250.0/255.0 green:225.0/255.0 blue:76.0/255.0 alpha:1.0];
            break;
        case 5:
            color = [UIColor colorWithRed:187.0/255.0 green:143.0/255.0 blue:181.0/255.0 alpha:1.0];
            break;
            
        default:
            break;
    }
    return color;
}

+ (UIColor *)lightColorForRowIndex:(NSInteger)rowIndex
{
    return [[self colorForRowIndex:rowIndex] lightColor];
}

+ (UIColor *)ohmageColor
{
    return [UIColor colorWithRed:0.0 green:110.0/255.0 blue:194.0/255.0 alpha:1.0];
}

+ (UIColor *)lightOhmageColor
{
    return [[[self ohmageColor] lightColor] lightColor];
}


/**
 *  textFont
 */
+ (UIFont *)textFont {
    return [UIFont systemFontOfSize:15.0];
}

/**
 *  boldTextFont
 */
+ (UIFont *)boldTextFont {
    return [UIFont boldSystemFontOfSize:15.0];
}

/**
 *  italicTextFont
 */
+ (UIFont *)italicTextFont {
    return [UIFont italicSystemFontOfSize:15.0];
}

@end