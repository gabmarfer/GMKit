//
//  UILabel+Autoresize.h
//  iParticipa
//
//  Created by Gabi Martelo on 29/05/14.
//  Copyright (c) 2014 Startcapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Autoresize)

/**
 * Resize the frame of the label adjusting the height for the given text
 *
 * @param text A string with the text that will be set
 * @return
 */
- (void)autoresizeLabelForText:(NSString *)text;

/**
 * Set a text of the label calling sizeToFit and keeping the width
 *
 * @param text The string to set as text
 * @return
 */
- (void)setTextSizingToFit:(NSString *)text;
@end
