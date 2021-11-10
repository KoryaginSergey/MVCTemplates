//
//  MVCViewController.m
//
//
//  Created by Taras Palienko on 03.11.15.
//  Copyright © 2015 DBBest. All rights reserved.
//

#import "MVCViewController.h"

@interface MVCViewController()

/** @brief temp view for setting a view in -loadView */
@property (nonatomic, strong) UIView *tempView;

@end

@implementation MVCViewController


#pragma mark - Initializers

- (nullable instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)bundle view:(nonnull UIView *)view model:(nullable id)model {
    self = [self initWithNibName:nibNameOrNil bundle:bundle view:view model:model router:nil];
    if (self) {
        
    }
    return self;
}

- (nullable instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)bundle view:(UIView *)view model:(id)model router:(id)router {
    self = [super initWithNibName:nibNameOrNil bundle:nil];
    if (self) {
        _model = model;
        _tempView = view;
        _router = router;
    }
    
    return self;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle {
    [NSException exceptionWithName:@"Initialization error"
                            reason:@"This class needs to be initialized with initWithNibName:bundle:view:model:router: method"
                          userInfo:nil];
    
    return nil;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    return [super initWithCoder:aDecoder];
}

- (id)init {
    [NSException exceptionWithName:@"Initialization error"
                            reason:@"This class needs to be initialized with initWithNibName:bundle:view:model:router: method"
                          userInfo:nil];
    return nil;
}

#pragma clang diagnostic pop


#pragma mark - View lifecycle

- (void)loadView {
    
    // assign custom view
    self.view = self.tempView;
    self.tempView = nil;
    
    // load ViewController's xib
    [super loadView];
}

@end
