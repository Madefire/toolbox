//
//  NSData+Hash.h
//  Reader
//
//  Created by Dan Weeks on 2013-04-09.
//  Copyright (c) 2013 MadeFire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Hash)

- (NSString*)mf_md5;
- (NSString*)mf_sha1;

@end
