//
//  MSHParser.m
//  materinstvo_ObjC
//
//  Created by adm on 06.12.13.
//  Copyright (c) 2013 ragarmakhis. All rights reserved.
//

#import "MSHParser.h"

@implementation MSHParser

//@synthesize bodyNode;

//-(id)initWithData:(NSData *)data{
//    return [[self alloc] initWithData:data];
//}

+(id)parser{
    return [[self alloc] init];
}

+(id)parserWithData:(NSData *)data{
    return [[self alloc] initWithData:data];
}

-(id)init {
    self = [super init];
    if (self) {
        self.bodyNode = NULL;
        self.parser = NULL;
    }
    return self;
}

-(id)initWithData:(NSData *)data {
    self = [super init];
    if (self) {
        NSError *error = nil;
        self.parser = [[HTMLParser alloc] initWithData:data error:&error];
        
        if (error) {
            NSLog(@"Error: %@", error);
            //        return @"error";
        }
        
        self.bodyNode = [self.parser body];
    }
    return self;
}

-(void)parsing {
    
//    NSLog(@"from MSHParser %@", [self.bodyNode contents]);

    NSString *string = NULL;
    
//    NSArray *inputNodes = [self.bodyNode findChildTags:@"input"];
//
//    for (HTMLNode *inputNode in inputNodes) {
//        if ([[inputNode getAttributeNamed:@"name"] isEqualToString:@"input2"]) {
//            NSLog(@"from MSHParser %@", [inputNode getAttributeNamed:@"value"]); //Answer to first question
//        }
//    }
    
//    HTMLNode *node = [self.bodyNode findChildOfClass:@"news"];
//    NSLog(@"from MSHParser %@", [node rawContents]);
    
    
    NSArray *divNodes = [self.bodyNode findChildTags:@"div"];
    
    for (HTMLNode *divNode in divNodes) {
        if ([[divNode getAttributeNamed:@"class"] isEqualToString:@"news_date_inner"]) {
            NSLog(@"from MSHParser %@", [divNode rawContents]); //Answer to second question
        }
    }
    string = @"fine from MSHParser";
    NSLog(@"%@", string);
    
}

@end
