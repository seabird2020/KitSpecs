//
//  CommonUtils.m
//  SplayGameSDK
//
//  Created by Nguyen Duy Khanh on 7/4/19.
//  Copyright © 2019 DucViet. All rights reserved.
//

#import "CommonUtils.h"
#import <UIKit/UIKit.h>


@implementation CommonUtils

+ (void) showAlertMsg:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message {
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle : title
                                                                    message : message
                                                             preferredStyle : UIAlertControllerStyleAlert];
    
    UIAlertAction * ok = [UIAlertAction
                          actionWithTitle:[LanguageSetting get:@"TitleButtonOK" alter:nil]
                          style:UIAlertActionStyleDefault
                          handler:^(UIAlertAction * action)
                          { }];
    
    [alert addAction:ok];
    dispatch_async(dispatch_get_main_queue(), ^{
        [viewController presentViewController:alert animated:YES completion:nil];
    });
    
}

@end
