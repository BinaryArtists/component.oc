//
//  EGOQuickPhoto.m
//  EGOPhotoViewer
//
//  Created by Devin Doty on 7/3/10.
//  Copyright 2010 enormego. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "EGOQuickPhoto.h"

@implementation EGOQuickPhoto
@synthesize URL=_URL, caption=_caption, image=_image, previewImage=_previewImage, size=_size, failed=_failed;

- (id)initWithImageURL:(NSURL*)aURL name:(NSString*)aName image:(UIImage*)aImage previewImage:(UIImage *)previewImage {
    if (self = [super init]) {
		_URL = [aURL copy];
		_caption = [aName copy];
		_image = [aImage copy];
		_previewImage = [previewImage copy];
	}
	
	return self;
}

- (id)initWithImageURL:(NSURL*)aURL name:(NSString*)aName image:(UIImage*)aImage {
    return [self initWithImageURL:aURL name:aName image:aImage previewImage:nil];
}

- (id)initWithImageURL:(NSURL*)aURL name:(NSString*)aName {
    return [self initWithImageURL:aURL name:aName image:nil previewImage:nil];
}

- (id)initWithImageURL:(NSURL*)aURL {
    return [self initWithImageURL:aURL name:nil image:nil previewImage:nil];
}

- (id)initWithImageURL:(NSURL*)aURL previewImage:(UIImage *)previewImage {
    return [self initWithImageURL:aURL name:nil image:nil previewImage:previewImage];
}

- (id)initWithImage:(UIImage*)aImage {
    return [self initWithImageURL:nil name:nil image:aImage previewImage:nil];
}

@end
