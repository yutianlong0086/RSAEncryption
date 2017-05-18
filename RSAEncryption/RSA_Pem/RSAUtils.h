//
//  RSAUtils.h
//  RSAEncryption
//
//  Created by YuTianLong on 2017/5/18.
//  Copyright © 2017年 http://blog.csdn.net/yutianlong9306. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAUtils : NSObject

/*
 *  公钥加密
 *  加密内容: NSString , NSData
 */

+ (NSString *)encryptString:(NSString *)str rsa_Public_Key:(NSString *)key;

+ (NSData *)encryptData:(NSData *)data rsa_Public_Key:(NSString *)key;

/*
 *  私钥解密
 *  解密与加密对应
 */
+ (NSString *)decryptString:(NSString *)str rsa_Private_Key:(NSString *)key;

+ (NSData *)decryptData:(NSData *)data rsa_Private_Key:(NSString *)key;

@end
