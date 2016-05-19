//
//  UIImageView+QHttpData.m
//  LOLTableView
//
//  Created by 刘清 on 16/5/16.
//  Copyright © 2016年 LQ. All rights reserved.
//

#import "UIImageView+QHttpData.h"

@implementation UIImageView (QHttpData)

//异步加载图片方法实现
- (void)setImageWihtURL:(NSString *)imageURL
{
    //GCD开启全局异步线程
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        //在异步线程中下载图片数据
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]];
        //NSData-->UIImage
        UIImage *image = [UIImage imageWithData:data];
        
        //回调主线程，刷新UIImageView
        dispatch_async(dispatch_get_main_queue(), ^{
            
            //在主线程中刷新UI（凡是和UI刷新相关的操作，必须放在主线程中完成）
            self.image = image;
            
        });
        
    });
}

@end
