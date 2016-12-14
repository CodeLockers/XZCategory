//
//  NSMutableAttributedString+Category.h
//  XZCategory
//
//  Created by 徐章 on 16/7/7.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Category)
/**
 *  set text color
 *
 *  @param color
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithColor:(UIColor *)color inRange:(NSRange)range;
/**
 *  set text font
 *
 *  @param font
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithFont:(UIFont *)font inRange:(NSRange)range;

/**
 *  set text backgroundcolor
 *
 *  @param color
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithBackgroundColor:(UIColor *)color inRange:(NSRange)range;

/**
 *  set text stroke color
 *
 *  @param color
 *  @param width
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithStrokeColor:(UIColor *)color strokeWidth:(CGFloat)width inRange:(NSRange)range;

/**
 *  set text shadow
 *
 *  @param shadow
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithShadow:(NSShadow *)shadow inRange:(NSRange)range;

/**
 *  set text delete line
 *
 *  @param deleteLineStyle
 *  @param color
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithDeleteLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;

/**
 *  set text under line
 *
 *  @param deleteLineStyle
 *  @param color
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithUnderLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;

/**
 *  set text kern
 *
 *  @param kern
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithKern:(CGFloat)kern inRange:(NSRange)range;

/**
 *  set text paragraphStyle
 *
 *  @param paragraphStyle
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithParagraphStyle:(NSParagraphStyle *)paragraphStyle inRange:(NSRange)range;

/**
 *  set text effect
 *
 *  @param effect
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithEffect:(NSString *)effect inRange:(NSRange)range;

/**
 *  set text ligature
 *
 *  @param isLigature
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithLigature:(BOOL)isLigature inRange:(NSRange)range;

/**
 *  set text obliqueness
 *
 *  @param obliqueness
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithObliqueness:(CGFloat)obliqueness inRange:(NSRange)range;

/**
 *  set text baseline offset
 *
 *  @param offset
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithBaseLineOffset:(CGFloat)offset inRange:(NSRange)range;

/**
 *  set text expansion
 *
 *  @param expansion
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithExpansion:(CGFloat)expansion inRange:(NSRange)range;

/**
 *  set text link
 *
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithURL:(NSURL *)url inRange:(NSRange)range;
/**
 *  set text image
 *
 *  @param attachment
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithAttacment:(NSTextAttachment *)attachment inRange:(NSRange)range;

/**
 *  set text attribute
 *
 *  @param dic
 *  @param range
 */
- (NSMutableAttributedString *)setTextWithAttributes:(NSDictionary *)dic inRange:(NSRange)range;

@end
