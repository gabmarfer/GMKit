//
//  NSDictionary+JSONString.m
//  evisita
//
//  Created by Gabi Martelo on 09/12/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import "NSDictionary+JSONString.h"

@implementation NSDictionary (JSONString)

/**
 * Returns a NSString containing a JSON converted from a Dictionary
 *
 * @param prettyPrinted a BOOL that indicates if the JSON should be printed in a readable way
 * @return NSString the string containing the JSON or an error description
 */
- (NSString *)stringWithJSONPrettyPrinted:(BOOL)prettyPrinted
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions)(prettyPrinted ? NSJSONWritingPrettyPrinted : 0)
                                                         error:&error];
    
    if (!jsonData) {
        return [NSString stringWithFormat:@"stringWithJSONPrettyPrinted: error: %@", error.localizedDescription];
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

@end
