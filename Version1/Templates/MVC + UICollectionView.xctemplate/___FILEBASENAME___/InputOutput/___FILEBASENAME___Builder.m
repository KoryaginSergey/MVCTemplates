//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___Builder.h"
#import "___VARIABLE_moduleName___Model.h"
#import "___VARIABLE_moduleName___View.h"
#import "___VARIABLE_moduleName___DataSource.h"
#import "___VARIABLE_moduleName___Router.h"

@implementation ___VARIABLE_moduleName___Builder

+ (___VARIABLE_moduleName___ViewController *)viewController {
    UIView<___VARIABLE_moduleName___ViewProtocol> *view = [[[NSBundle mainBundle] loadNibNamed:@"___VARIABLE_moduleName___View" owner:nil options:nil] firstObject];
    
    NSObject<___VARIABLE_moduleName___ModelProtocol> *model = [[___VARIABLE_moduleName___Model alloc] init];
    
    ___VARIABLE_moduleName___DataSource *dataSource = [[___VARIABLE_moduleName___DataSource alloc] initWithModel:model];
    
    ___VARIABLE_moduleName___Router *router = [[___VARIABLE_moduleName___Router alloc] init];
    
    ___VARIABLE_moduleName___ViewController *viewController = [[___VARIABLE_moduleName___ViewController alloc] initWithView:view model:model router:router dataSource:dataSource];
    
    return viewController;
}

@end
