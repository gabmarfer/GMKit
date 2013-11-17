//
//  UIDevice+Models.m
//  Kenoca Software
//
//  Created on 05/06/13.
//  Copyright (c) 2013 Gabriel Martelo. All rights reserved.
//
// Thanks to yasirmturk
// http://stackoverflow.com/a/5337804/492624

#import "UIDevice+Models.h"

@implementation UIDevice (Models)

#pragma mark - Identifying the device
- (BOOL)isIpad
{
    return ([self userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

- (BOOL)isIphone
{
    return ([self userInterfaceIdiom] == UIUserInterfaceIdiomPhone);
}

- (BOOL)isIphone5
{
    return ([self isIphone] && [[UIScreen mainScreen] bounds].size.height == 568.0f);
}

- (BOOL)isIphone4
{
    return ([self isIphone] && [[UIScreen mainScreen] bounds].size.height == 480.0f);
}

- (BOOL)isRetina
{
    return ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0));
}

#pragma mark - Identifying iOS system verion
- (BOOL)systemVersionEqualTo:(CGFloat)version
{
    NSString *strVersion = [NSString stringWithFormat:@"%0.2f",version];    
    return ([[self systemVersion] compare:strVersion options:NSNumericSearch] == NSOrderedSame);
}

- (BOOL)systemVersionGreaterThan:(CGFloat)version
{
    NSString *strVersion = [NSString stringWithFormat:@"%0.2f",version];
    return ([[self systemVersion] compare:strVersion options:NSNumericSearch] == NSOrderedDescending);
}

- (BOOL)systemVersionGreaterThanOrEqualTo:(CGFloat)version
{
    NSString *strVersion = [NSString stringWithFormat:@"%0.2f",version];
    return ([[self systemVersion] compare:strVersion options:NSNumericSearch] != NSOrderedAscending);
}

- (BOOL)systemVersionLessThan:(CGFloat)version
{
    NSString *strVersion = [NSString stringWithFormat:@"%0.2f",version];
    return ([[self systemVersion] compare:strVersion options:NSNumericSearch] == NSOrderedAscending);
}

- (BOOL)systemVersionLessThanOrEqualTo:(CGFloat)version
{
    NSString *strVersion = [NSString stringWithFormat:@"%0.2f",version];
    return ([[self systemVersion] compare:strVersion options:NSNumericSearch] != NSOrderedDescending);
}


@end
