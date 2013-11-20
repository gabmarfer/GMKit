//
//  NSString+DecimalNumber.h
//  evisita
//
//  Created by Gabi Martelo on 19/11/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DecimalNumber)
+ (NSString *)stringForDecimalNumber:(NSDecimalNumber *)dec;
+ (NSString *)stringCurrencyFormattedForDecimalNumber:(NSDecimalNumber *)dec;
@end

@interface NSDecimalNumber (String)
+ (NSDecimalNumber *)decimalNumberForString:(NSString *)str;
@end
