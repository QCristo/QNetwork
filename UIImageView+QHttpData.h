//
//  UIImageView+QHttpData.h
//  LOLTableView
//
//  Created by 刘清 on 16/5/16.
//  Copyright © 2016年 LQ. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  异步加载图片（NSData、GCD）
 */

@interface UIImageView (QHttpData)

/**
 *  异步加载图片的实例方法
 *
 *  @param imageURL 图片的网址信息
 */
- (void)setImageWihtURL:(NSString *)imageURL;

@end
