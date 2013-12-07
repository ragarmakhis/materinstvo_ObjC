//
//  MSHParser.m
//  materinstvo_ObjC
//
//  Created by adm on 06.12.13.
//  Copyright (c) 2013 ragarmakhis. All rights reserved.
//

#import "MSHParser.h"

@implementation MSHParser

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
    }
    return self;
}

-(id)initWithData:(NSData *)data {
    self = [super init];
    if (self) {
        NSError *error = nil;
        HTMLParser *parser = [[HTMLParser alloc] initWithData:data error:&error];
        
        if (error) {
            NSLog(@"Error: %@", error);
            //        return @"error";
        }
        
        self.bodyNode = [parser body];
    }
    return self;
}

-(NSString*)parsing {
    NSString *string = NULL;
    
    NSArray *inputNodes = [self.bodyNode findChildTags:@"input"];
//    NSArray *inputNodes = [
    

    for (HTMLNode *inputNode in inputNodes) {
        if ([[inputNode getAttributeNamed:@"name"] isEqualToString:@"input2"]) {
            NSLog(@"from MSHParser %@", [inputNode getAttributeNamed:@"value"]); //Answer to first question
        }
    }
    
    NSArray *spanNodes = [self.bodyNode findChildTags:@"span"];
    
    for (HTMLNode *spanNode in spanNodes) {
        if ([[spanNode getAttributeNamed:@"class"] isEqualToString:@"spantext"]) {
            NSLog(@"from MSHParser %@", [spanNode rawContents]); //Answer to second question
        }
    }
    string = @"fine";
    
    return string;
}

@end
