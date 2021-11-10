//
//  MVCViewController.h
//
//
//  Created by Taras Palienko on 03.11.15.
//  Copyright © 2015 DBBest. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 @class MVCViewController
 @brief Base class for MVC modules.
 @discussion This class is to be used with MVC module templates for Xcode.
 */
@interface MVCViewController : UIViewController

/* @brief A model from MVC */
@property (nonnull, nonatomic, strong) NSObject *model;

@property (nullable, nonatomic, strong) NSObject *router;

- (nullable instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)bundle view:(nonnull UIView *)view model:(nullable NSObject *)model;

/**
 @brief Designated initializer. Allows you to pass a view and a model and router
 via constructor in order to respect dependency injection concept.
 */
- (nullable instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)bundle view:(nonnull UIView *)view model:(nullable NSObject *)model router:(nullable NSObject *)router NS_DESIGNATED_INITIALIZER;

@end
