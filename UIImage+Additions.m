//
//  UIImage+Additions.m
//  Friendkhana
//
//  Created by Gabi Martelo on 06/08/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "UIImage+Additions.h"

@implementation UIImage (Additions)

+ (UIImage *)imageWithImage:(UIImage *)sourceImage scaledToSize:(CGSize)newSize
{
    CGSize origImageSize = [sourceImage size];
    
    // The rectangle of the thumbnail
    CGRect newRect = CGRectMake(0, 0, newSize.width, newSize.height);
    
    // Figure out a scaling ratio to make sure we maintain the same aspect ratio
    float ratio = MAX(newRect.size.width / origImageSize.width, newRect.size.height / origImageSize.height);
    
    // Create a transparent bitmap context with a scaling factor equal to that of the screen
    UIGraphicsBeginImageContextWithOptions(newRect.size, NO, 0.0);
    
    // Create a path that is a rounded rectangle
    //UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:newRect cornerRadius:kPictureCornerRadius];
    
    // Make all subsequent drawing clip to this rounded rectangle
    //[path addClip];
    
    // Center the image in the thumbnail rectangle
    CGRect projectRect;
    projectRect.size.width = ratio * origImageSize.width;
    projectRect.size.height = ratio * origImageSize.height;
    projectRect.origin.x = (newRect.size.width - projectRect.size.width) / 2.0;
    projectRect.origin.y = (newRect.size.height - projectRect.size.height) / 2.0;
    
    // Draw the image on it
    [sourceImage drawInRect:projectRect];
    
    // Get the image from the image context, keep it as our thumbnail
    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
    
    return smallImage;
}

+ (UIImage*)imageWithImage:(UIImage *)sourceImage scaledToWidth:(CGFloat)newWidth
{
    float oldWidth = [sourceImage size].width;
    float scaleFactor = newWidth / oldWidth;
    float newHeight = [sourceImage size].height * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}



@end
