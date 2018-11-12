//
//  UIImage+BundleImage.h
//  Pods
//
//  Created by 李世航 on 2018/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (BundleImage)

+(UIImage *)loadBundleImage:(NSString *)imageName ClassName:(NSString *)className;

@end

NS_ASSUME_NONNULL_END
