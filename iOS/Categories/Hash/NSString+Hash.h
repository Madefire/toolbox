//
//  MD5SumCategory.h
//  Reader
//
//  Created by Dan Weeks on 2012-09-18.
//  Copyright (c) 2012 MadeFire. All rights reserved.
//
// found on Stack Overflow: http://stackoverflow.com/questions/1524604/md5-algorithm-in-objective-c

#import <Foundation/Foundation.h>

@interface NSString (Hash)
+ (NSString *)mf_stringFromMD5DigestResult:(unsigned char*)result;
+ (NSString *)mf_stringFromSHA1DigestResult:(unsigned char*)result;
- (NSString*)mf_md5;
- (NSString*)mf_sha1;
@end
