//
//  NSString+Dates.m
//  evisita
//
//  Created by Gabi Martelo on 19/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "NSString+Dates.h"

@implementation NSString (Dates)

/**
 * Convert a NSDate to a NSString
 *
 * @param dat the NSDate to convert
 * @return NSString a localized NSString with the given date
 */
+ (NSString *)stringFormattedForDate:(NSDate *)dat
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLocale *locale = [NSLocale currentLocale];
    [dateFormatter setLocale:locale];
    return [dateFormatter stringFromDate:dat];
}
@end

@implementation NSDate (Strings)

/**
 * Convert a NSString to a NSDate
 *
 * @param strDate the NSString to convert
 * @return NSDate the converted NSDate
 */
+ (NSDate *)dateFromString:(NSString *)strDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter dateFromString:strDate];
}
@end
