//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import "___VARIABLE_moduleName___ViewProtocols.h"
#import "___VARIABLE_moduleName___ModelProtocols.h"
#import "___VARIABLE_moduleName___Router.h"
#import "MVCViewController.h"

@interface ___VARIABLE_moduleName___ViewController : MVCViewController

- (nullable id)initWithView:(nonnull UIView<___VARIABLE_moduleName___ViewProtocol> *)view model:(nonnull NSObject<___VARIABLE_moduleName___ModelProtocol> *)model router:(nullable ___VARIABLE_moduleName___Router *)router;


@end
