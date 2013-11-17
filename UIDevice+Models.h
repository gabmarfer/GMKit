//
//  UIDevice+Models.h
//  Kenoca Software
//
//  Created on 05/06/13.
//  Copyright (c) 2013 Gabriel Martelo. All rights reserved.
//
// Thanks to yasirmturk
// http://stackoverflow.com/a/5337804/492624

#import <UIKit/UIKit.h>

@interface UIDevice (Models)

// Identifying the device
- (BOOL)isIpad;
- (BOOL)isIphone;
- (BOOL)isIphone5;
- (BOOL)isIphone4;
- (BOOL)isRetina;

// Identifying iOS system version
- (BOOL)systemVersionEqualTo:(CGFloat)version;
- (BOOL)systemVersionGreaterThan:(CGFloat)version;
- (BOOL)systemVersionGreaterThanOrEqualTo:(CGFloat)version;
- (BOOL)systemVersionLessThan:(CGFloat)version;
- (BOOL)systemVersionLessThanOrEqualTo:(CGFloat)version;

@end
