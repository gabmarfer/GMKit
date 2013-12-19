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

/**
 * Convert a NSDate to a NSString with the desired format
 *
 * @param dat the NSDate to convert
 * @param timeStyle the NSDateFormatterStyle for the Time
 * @param dateStyle the NSDateFormatterStyle for the Date
 * @return NSString a localized NSString with the given date and format
 */
+ (NSString *)stringFormattedForDate:(NSDate *)dat
                           timeStyle:(NSDateFormatterStyle)timeStyle dateStyle:(NSDateFormatterStyle)dateStyle
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:timeStyle];
    [dateFormatter setDateStyle:dateStyle];
    NSLocale *locale = [NSLocale currentLocale];
    [dateFormatter setLocale:locale];
    return [dateFormatter stringFromDate:dat];
}

/**
 * Create a formatted string with an interval of dates. Use a NSLocalizedString to set a separator between dates.
 *
 * @param startDate the NSDate with the start date
 * @param endDate the NSDate with the end date
 * @return NSString a localized NSString with the given interval (Example: 24 Oct a 27 Oct)
 */
+ (NSString *)stringWithIntervalFromDate:(NSDate *)startDate toDate:(NSDate *)endDate
{
    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"dMMM" options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    
    NSString *strStartDate = [dateFormatter stringFromDate:startDate];
    NSString *strEndDate = [dateFormatter stringFromDate:endDate];
    return [NSString stringWithFormat:@"%@ %@ %@",
            strStartDate,
            NSLocalizedString(@"kDateSeparator", nil),
            strEndDate];
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
    //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    return [dateFormatter dateFromString:strDate];
}
@end
