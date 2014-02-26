//
//  CALayer+Additions.h
//  evisita
//
//  Created by Gabi Martelo on 28/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (Additions)

+ (CALayer *)createShadowWithFrame:(CGRect)frame toBottom:(BOOL)toBottom;
@end
