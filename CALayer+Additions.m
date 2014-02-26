//
//  CALayer+Additions.m
//  evisita
//
//  Created by Gabi Martelo on 28/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "CALayer+Additions.h"

@implementation CALayer (Additions)

/**
 * Create a shadow above or below a UIView
 *
 * @param frame a CGRect with the frame for the shadow
 * @param toBottom a BOOL indicating if the shadow will be draw to the bottom
 * @return a CALayer with the shadow to add as sublayer
 */
+ (CALayer *)createShadowWithFrame:(CGRect)frame toBottom:(BOOL)toBottom
{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = frame;
    
    UIColor* lightColor = [[UIColor blackColor] colorWithAlphaComponent:0.0];
    UIColor* darkColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    
    if (toBottom)
        gradient.colors = [NSArray arrayWithObjects:(id)darkColor.CGColor, (id)lightColor.CGColor, nil];
    else
        gradient.colors = [NSArray arrayWithObjects:(id)lightColor.CGColor,(id)darkColor.CGColor, nil];
    
    return gradient;
}

@end
