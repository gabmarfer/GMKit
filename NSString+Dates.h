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
+ (NSString *)stringFormattedForDate:(NSDate *)dat
                           timeStyle:(NSDateFormatterStyle)timeStyle dateStyle:(NSDateFormatterStyle)dateStyle;
+ (NSString *)stringWithIntervalFromDate:(NSDate *)startDate toDate:(NSDate *)endDate;
@end

@interface NSDate (Strings)
+ (NSDate *)dateFromString:(NSString *)strDate;
+ (NSDate *)dateFromString:(NSString *)strDate withFormat:(NSString *) format;
@end
