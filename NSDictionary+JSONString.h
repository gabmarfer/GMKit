//
//  NSDictionary+JSONString.h
//  evisita
//
//  Created by Gabi Martelo on 09/12/13.
//  Copyright (c) 2013 Startcapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSONString)
- (NSString *)stringWithJSONPrettyPrinted:(BOOL)prettyPrinted;
@end
