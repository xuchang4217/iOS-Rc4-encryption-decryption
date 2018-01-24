//
//  XCRC4.h
//  WanRenHui
//
//  Created by Chang_Mac on 17/4/4.
//  Copyright © 2017年 gansbat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface rc4 : NSObject
/**
 加密字符串

 @param string 要加密的字符串
 @param key 加密的 key
 @return  加密后的字符串
 */
+(NSString *)encode:(NSString *)string andSecretKey:(NSString *)key;


/**
 解密字符串

 @param string 要解密的字符串
 @param key 解密的 key
 @return 解密后的字符串
 */
+(NSString *)decode:(NSString *)string andSecretKey:(NSString *)key;

@end
