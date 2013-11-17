//
//  UITextField+Additions.m
//  evisita
//
//  Created by Gabi Martelo on 30/10/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "UITextField+Additions.h"

@implementation UITextField (Additions)

- (void)addPaddingToTextField
{
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10.0f, [self frame].size.height)];
    [paddingView setBackgroundColor:[UIColor clearColor]];
    [self setLeftView:paddingView];
    [self setLeftViewMode:UITextFieldViewModeAlways];
}

@end
