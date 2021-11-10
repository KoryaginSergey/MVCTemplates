//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "___VARIABLE_moduleName___ModelProtocols.h"
#import "___VARIABLE_moduleName___CellDelegate.h"

@interface ___VARIABLE_moduleName___DataSource : NSObject <UITableViewDataSource>

@property (nonatomic, weak) id<___VARIABLE_moduleName___CellDelegate> cellDelegate;

- (id)initWithModel:(id<___VARIABLE_moduleName___ModelProtocol>)model;

// using this method allows us to NOT share cell class to Controller, so it will not depend on it
- (void)registerNibsForTableView:(UITableView *)tableView;

@end
