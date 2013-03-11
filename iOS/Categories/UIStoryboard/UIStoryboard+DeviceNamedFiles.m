//
//  UIStoryboard+DeviceNamedFiles.m
//  Reader
//
//  Created by Dan Weeks on 2012-12-20.
//
// Copyright (c) 2012 Madefire, Inc. (http://madefire.com/)
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "UIStoryboard+DeviceNamedFiles.h"

@implementation UIStoryboard (DeviceNamedFiles)

+ (UIStoryboard *)mf_deviceStoryboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil
{
    NSAssert(name, @"Storyboard name cannot be nil");
    UIStoryboard *storyboard = nil;

    NSString *suffix = @"ipad";
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        suffix = @"iphone";
    }
    NSString *nameWithSuffix = [NSString stringWithFormat:@"%@~%@", name, suffix];

    // first check for name with suffix
    storyboard = [UIStoryboard storyboardWithName:nameWithSuffix bundle:storyboardBundleOrNil];
    if (!storyboard) {
        // storyboard is still nil, try just the name without device suffix
        storyboard = [UIStoryboard storyboardWithName:name bundle:storyboardBundleOrNil];
    }

    return storyboard;
}

@end
