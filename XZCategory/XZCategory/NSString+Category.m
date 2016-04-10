//
//  NSString+Category.m
//  XZCategory
//
//  Created by 徐章 on 16/4/10.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "NSString+Category.h"
#import <CommonCrypto/CommonDigest.h> 

@implementation NSString (Category)

- (NSString *)md5{
    
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (NSString *)jsonString{
    
    NSMutableString *jsonStr = [NSMutableString stringWithString:self];
    [jsonStr replaceOccurrencesOfString:@"\"" withString:@"\\\"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"/" withString:@"\\/" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"\n" withString:@"\\n" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"\b" withString:@"\\b" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"\f" withString:@"\\f" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"\r" withString:@"\\r" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    [jsonStr replaceOccurrencesOfString:@"\t" withString:@"\\t" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [jsonStr length])];
    return [NSString stringWithString:jsonStr];
}

+ (NSString *)stringFromInt:(NSInteger)value{
    
    return [NSString stringWithFormat:@"%ld",(long)value];
}

+ (NSString *)stringFromFloat:(CGFloat)value format:(NSString *)format{
    
    if (!format)
        format = @"%0.2f";
    return [NSString stringWithFormat:format,value];
}
@end
