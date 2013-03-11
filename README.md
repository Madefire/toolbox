Utility
=======

Utility code from Madefire

## iOS

### Categories

#### UIStoryboard+DeviceNamedFiles

The files `iOS/Categories/UIStoryboard/UIStoryboard+DeviceNamedFiles.h` and 
`iOS/Categories/UIStoryboard/UIStoryboard+DeviceNamedFiles.m`
contain one category method 
`+ (UIStoryboard *)mf_deviceStoryboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil` 
that will take a base name and return one of three files based on device and file existence:

1. `basename~ipad.storyboard`
2. `basename~iphone.storyboard`
3. `basename.storyboard`

This is designed to mimic the functionality of `UIImage`'s [`+imageNamed:`](https://developer.apple.com/library/ios/#documentation/UIKit/Reference/UIImage_Class/Reference/Reference.html#//apple_ref/occ/clm/UIImage/imageNamed:)
method that returns image files based on device and screen resolution that are named appropriately.

##### Example

Showing a login panel on both iPad and iPhone requires one storyboard for each device. 
Files created are `LoginPanel~ipad.storyboard` and `LoginPanel~iphone.storyboard`.

To load the login panel storyboard there is no need for if/else branching code, instead 
just make a call with the basename of `LoginPanel`.

```
UIStoryboard *storyboard = [UIStoryboard mf_deviceStoryboardWithName:@"LoginPanel" bundle:nil];
```

When running on an iPad you'll get the `LoginPanel~ipad.storyboard` and on the iPhone you'll
receive `LoginPanel~iphone.storyboard`. If there is only one storyboard that will be returned instead.
If there are no storyboards with that basename nil is returned.


## License

Copyright (c) 2012 Madefire, Inc. (http://madefire.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
