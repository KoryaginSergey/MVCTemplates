//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___ViewController.h"
#import "___VARIABLE_moduleName___Model.h"
#import "___VARIABLE_moduleName___View.h"


@interface ___VARIABLE_moduleName___ViewController () <___VARIABLE_moduleName___ModelDelegate, ___VARIABLE_moduleName___ViewDelegate>

/** @brief A model */
@property (nonatomic, strong) NSObject <___VARIABLE_moduleName___ModelProtocol> *model;

/** @brief Overriding view property */
@property (nonatomic, strong) UIView<___VARIABLE_moduleName___ViewProtocol> *view;

@property (nonatomic, strong) ___VARIABLE_moduleName___Router *router;

@end


@implementation ___VARIABLE_moduleName___ViewController

@dynamic view;
@dynamic model;
@dynamic router;


#pragma mark - Initialization

- (nullable id)initWithView:(nonnull UIView<___VARIABLE_moduleName___ViewProtocol> *)view model:(nonnull NSObject<___VARIABLE_moduleName___ModelProtocol> *)model router:(nullable ___VARIABLE_moduleName___Router *)router {
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil view:view model:model];
    if (self) {
        self.model.delegate = self;
        self.router = router;
        
        // custom initialization code goes here
    }
    return self;
}


#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // assign a view delegate when the view did load
    self.view.delegate = self;
    
    // custom code goes here
}
    
        
#pragma mark - ___VARIABLE_moduleName___ViewDelegate
    
/** Implement ___VARIABLE_moduleName___ViewDelegate methods here */

- (void)viewSomeAction:(UIView<___VARIABLE_moduleName___ViewProtocol> *)view {
    NSLog(@"Something happened on view!");
}


#pragma mark - ___VARIABLE_moduleName___ModelDelegate

- (void)modelDidChanged:(NSObject<___VARIABLE_moduleName___ModelProtocol> *)model {
    
}

@end



