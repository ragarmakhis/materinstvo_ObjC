//
//  MSHParser.h
//  materinstvo_ObjC
//
//  Created by adm on 06.12.13.
//  Copyright (c) 2013 ragarmakhis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTMLParser.h"
#import "HTMLNode.h"

@interface MSHParser : NSObject

-(NSString*)parser:(NSData*)data;

@end