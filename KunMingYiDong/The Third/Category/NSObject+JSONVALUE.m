//
//  NSObject+JSONVALUE.m
//  GSRCUMobileBank
//
//  Created by YongQiang Wei on 2020/7/21.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import "NSObject+JSONVALUE.h"

@implementation NSObject (JSONVALUE)

- (NSString *)JSONRepresentation
{
    NSString *str;
    if ([NSJSONSerialization isValidJSONObject:self])
    {
        NSError *err;
        NSData *strData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&err];
        str = [[NSString alloc] initWithData:strData encoding:NSUTF8StringEncoding];
    }
    return str;
}

- (id)JSONValue
{
    //处理报文
    NSError *err;
    //判断是否为json字符串
    if ([self isKindOfClass:[NSString class]])
    {
        NSString *jsonstr = (NSString*)self;
        NSString *containString = @":";
        NSRange range = [jsonstr rangeOfString:containString];
        if (range.location == NSNotFound || !jsonstr)
        {
            return nil;
        }
    }
    else
    {
        NSString *jsonstr = [[NSString alloc]initWithData:(NSData *)self encoding:NSUTF8StringEncoding];
        NSString *containString = @":";
        NSRange range = [jsonstr rangeOfString:containString];
        if (range.location == NSNotFound || !jsonstr)
        {
            return nil;
        }
    }
        if ([self isKindOfClass:[NSString class]])
        {
            NSString *jsonstr = (NSString*)self;
            NSData *data = [jsonstr dataUsingEncoding:NSUTF8StringEncoding];
            id dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&err];
            return dict;
        }
   
    id dict = [NSJSONSerialization JSONObjectWithData:(NSData *)self options:NSJSONReadingAllowFragments error:&err];
    return dict;
}

@end
