//
//  NSData+Hash.m
//  Reader
//
//  Created by Dan Weeks on 2013-04-09.
//  Copyright (c) 2013 MadeFire. All rights reserved.
//

#import "NSData+Hash.h"
#import "NSString+Hash.h"
#import <CommonCrypto/CommonDigest.h> // Need to import for CC_MD5 access

@implementation NSData (Hash)

- (NSString*)mf_md5
{
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( self.bytes, self.length, result ); // This is the md5 call
    return [NSString mf_stringFromMD5DigestResult:result];
}

- (NSString*)mf_sha1
{
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1( self.bytes, self.length, result ); // This is the sha1 call
    return [NSString mf_stringFromSHA1DigestResult:result];
}

@end
