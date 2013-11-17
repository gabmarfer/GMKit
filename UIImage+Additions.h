//
//  UIImage+Additions.h
//  Friendkhana
//
//  Created by Gabi Martelo on 06/08/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Additions)

+ (UIImage *)imageWithImage:(UIImage *)sourceImage scaledToWidth:(CGFloat)newWidth;
+ (UIImage *)imageWithImage:(UIImage *)sourceImage scaledToSize:(CGSize)newSize;

@end
