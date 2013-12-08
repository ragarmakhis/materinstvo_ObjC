//
//  main.m
//  materinstvo_ObjC
//
//  Created by adm on 06.12.13.
//  Copyright (c) 2013 ragarmakhis. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MSHParser.h"

int main(int argc, char *argv[])
{
//    NSLog(@"ping");
    
//    NSString *html =
//    @"<ul>"
//    "<li><input type='image' name='input1' value='string1value' /></li>"
//    "<li><input type='image' name='input2' value='string2value' /></li>"
//    "</ul>"
//    "<span class='spantext'><b>Hello World 1</b></span>"
//    "<span class='spantext'><b>Hello World 2</b></span>";
//    
//    NSData *data = [html dataUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:@"http://materinstvo-shop.ru"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    MSHParser *parser = [MSHParser parserWithData:data];

    
    NSString *stringFine = @"fine";
    
    
    [parser parsing];
    
    NSLog(@"%@", stringFine);

    
//    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", string);

    
    
//    NSURL *url = [NSURL URLWithString:@"http://materinstvo-shop.ru"];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"ret = %@", ret);
        
    
//    return NSApplicationMain(argc, (const char **)argv);
}
