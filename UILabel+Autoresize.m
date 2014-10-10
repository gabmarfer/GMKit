//
//  UILabel+Autoresize.m
//  iParticipa
//
//  Created by Gabi Martelo on 29/05/14.
//  Copyright (c) 2014 Startcapps. All rights reserved.
//

#import "UILabel+Autoresize.h"

@implementation UILabel (Autoresize)

- (void)autoresizeLabelForText:(NSString *)text
{
    CGSize maximumLabelSize = CGSizeMake(self.frame.size.width, CGFLOAT_MAX);
    CGSize expectedLabelSize = [text boundingRectWithSize:maximumLabelSize
                                                  options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesLineFragmentOrigin
                                               attributes:@{NSFontAttributeName : self.font}
                                                  context:nil].size;;
    // Adjust the label to the expected height.
    CGRect expectedFrame = self.frame;
    expectedFrame.size.height = ceilf(expectedLabelSize.height);
    self.frame = expectedFrame;
}

- (void)setTextSizingToFit:(NSString *)text
{
    CGFloat lblWidth = self.bounds.size.width;
    CGRect lblFrame = self.frame;
    self.text = text;
    [self sizeToFit];
    lblFrame.size.width = lblWidth;
    self.frame = lblFrame;
}

@end
