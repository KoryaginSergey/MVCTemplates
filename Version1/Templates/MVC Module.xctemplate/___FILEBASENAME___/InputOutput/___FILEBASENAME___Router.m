//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___Router.h"

// #Import here appropriate builder for destination view controller

@implementation ___VARIABLE_moduleName___Router

// Navigation example method
- (void)navigateToSomeScreenFromViewController:(UIViewController *)vc withBackgroundColor:(UIColor *)color {
    
    // Create new screen. Here you should use another Builder to create it.
    UIViewController *someScreenVC = [UIViewController new];
    
    // Set passed parameters
    someScreenVC.view.backgroundColor = color;
    
    // Perform navigation
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        someScreenVC.modalPresentationStyle = UIModalPresentationPageSheet;
        someScreenVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [vc.navigationController presentViewController:someScreenVC animated:YES completion:nil];
    } else {
       [vc.navigationController pushViewController:someScreenVC animated:YES];
    }
    
}

@end
