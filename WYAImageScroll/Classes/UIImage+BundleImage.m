//
//  UIImage+BundleImage.m
//  Pods
//
//  Created by 李世航 on 2018/11/12.
//

#import "UIImage+BundleImage.h"

@implementation UIImage (BundleImage)

+(UIImage *)loadBundleImage:(NSString *)imageName ClassName:(NSString *)className{
    NSString *bundlePath = [[NSBundle bundleForClass:NSClassFromString(className)].resourcePath
                            stringByAppendingPathComponent:@"/WYAImageScroll.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:imageName
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    return image;
}

@end
