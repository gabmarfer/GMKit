//
//  NSString+DecimalNumber.m
//  evisita
//
//  Created by Gabi Martelo on 19/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "NSString+DecimalNumber.h"

@implementation NSString (DecimalNumber)

/**
 * Convert a NSDecimalNumber to a NSString
 *
 * @param dec the NSDecimalNumber to convert
 * @return NSString the converted string
 */
+ (NSString *)stringForDecimalNumber:(NSDecimalNumber *)dec
{
    NSLocale *locale = [NSLocale currentLocale];
    NSNumberFormatter *decimalFormatter = [[NSNumberFormatter alloc] init];
    [decimalFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    [decimalFormatter setLocale:locale];
    return [decimalFormatter stringFromNumber:dec];
}

/**
 * Convert a NSDecimalNumber to a NSString and apply a currency format
 *
 * @param dec the NSDecimalNumber to convert
 * @return NSString the converted and formatted string
 */
+ (NSString *)stringCurrencyFormattedForDecimalNumber:(NSDecimalNumber *)dec
{
    NSNumberFormatter *currencyFormatter = [[NSNumberFormatter alloc] init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    NSLocale *locale = [NSLocale currentLocale];
    [currencyFormatter setLocale:locale];
    return [currencyFormatter stringFromNumber:dec];
}
@end

@implementation NSDecimalNumber (String)

/**
 * Convert a NSString to a NSDecimalNumber
 *
 * @param str the NSString to convert
 * @return NSDecimalNumber the converted NSDecimalNumber
 */
+ (NSDecimalNumber *)decimalNumberForString:(NSString *)str
{
    NSLocale *locale = [NSLocale currentLocale];
    NSString *separator = [locale objectForKey:NSLocaleDecimalSeparator];
    NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:NSLocaleDecimalSeparator, separator, nil];
    return [NSDecimalNumber decimalNumberWithString:str locale:dict];
}
@end