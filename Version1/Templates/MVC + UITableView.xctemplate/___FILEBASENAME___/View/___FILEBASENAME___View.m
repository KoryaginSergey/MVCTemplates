//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___View.h"

@interface ___VARIABLE_moduleName___View()

// add view private properties/outlets/methods here

@end

@implementation ___VARIABLE_moduleName___View

@synthesize delegate = _delegate;
@synthesize tableView = _tableView;

- (void)awakeFromNib {
    [super awakeFromNib];
    self.keyboardAvoidingScrollView = self.tableView;
    // setup view and table view programmatically here
}

#pragma mark ___VARIABLE_moduleName___View interface methods

/** Implement ___FILEBASENAMEASIDENTIFIER___View inteface methods here */


#pragma mark - IBActions

/** Put IBActions here, notify controller via delegate if needed */

// example
- (IBAction)someButtonAction:(UIButton *)sender {
    
    [self.delegate viewSomeAction:self];
}


@end
