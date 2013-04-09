//
//  NSData+MD5Sum.m
//  Reader
//
//  Created by Dan Weeks on 2012-09-18.
//  Copyright (c) 2012 MadeFire. All rights reserved.
//

#import "NSString+Hash.h"
#import <CommonCrypto/CommonDigest.h> // Need to import for CC_MD5 access

@implementation NSString (Hash)

+ (NSString *)mf_stringFromMD5DigestResult:(unsigned char*)result
{
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

+ (NSString *)mf_stringFromSHA1DigestResult:(unsigned char*)result
{
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15],
            result[16], result[17], result[18], result[19]
            ];
}

- (NSString *)mf_md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, strlen(cStr), result ); // This is the md5 call
    return [NSString mf_stringFromMD5DigestResult:result];
}

- (NSString *)mf_sha1
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1( cStr, strlen(cStr), result ); // This is the sha1 call
    return [NSString mf_stringFromSHA1DigestResult:result];
}

@end
