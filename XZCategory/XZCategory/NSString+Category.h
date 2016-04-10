//
//  NSString+Category.h
//  XZCategory
//
//  Created by 徐章 on 16/4/10.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Category)

/** the string use md5 encryption*/
@property (nonatomic, readonly, strong) NSString *md5;

/** change string to json string*/
@property (nonatomic, readonly, strong) NSString *jsonString;

/**
 *  int->string
 *
 *  @param value the value of int
 *
 *  @return the string of int
 */
+ (NSString *)stringFromInt:(NSInteger)value;

/**
 *  float->string
 *
 *  @param value  the value of float
 *  @param format the format of string, such as the value=8.234 with the format="%0.2f", the result of the method is "8.23", default format is "0.2f"
 *
 *  @return the string of float
 */
+ (NSString *)stringFromFloat:(CGFloat)value format:(NSString *)format;

@end
