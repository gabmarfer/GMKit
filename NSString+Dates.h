//
//  NSString+Dates.h
//  evisita
//
//  Created by Gabi Martelo on 19/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Dates)
+ (NSString *)stringFormattedForDate:(NSDate *)dat;
@end

@interface NSDate (Strings)
+ (NSDate *)dateFromString:(NSString *)strDate;
@end
