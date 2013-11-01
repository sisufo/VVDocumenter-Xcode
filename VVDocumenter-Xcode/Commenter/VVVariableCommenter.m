//
//  VVVariableCommenter.m
//  VVDocumenter-Xcode
//
//  Created by 王 巍 on 13-7-17.
//  Copyright (c) 2013年 OneV's Den. All rights reserved.
//

#import "VVVariableCommenter.h"
#import "VVDocumenterSetting.h"

@implementation VVVariableCommenter

-(NSString *) document
{
    NSString * comment = [NSString stringWithFormat:@"%@%@%@%@%@",
                          [self startCommentWithWrapped:NO],
                          [self argumentsComment],
                          [self returnComment],
                          [self sinceComment],
                          [self endComment]];
    
    // The last line of the comment should be adjacent to the next line of code,
    // back off the newline from the last comment component.
    if ([[VVDocumenterSetting defaultSetting] prefixWithSlashes]) {
        return [comment stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    } else {
        return comment;
    }
}


@end
