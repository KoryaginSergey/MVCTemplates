//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___Model.h"


@interface ___VARIABLE_moduleName___Model()

@property (nonatomic, strong, readwrite) NSArray <NSString *> *items;

@end


@implementation ___VARIABLE_moduleName___Model

@synthesize delegate = _delegate;

- (id)init {
    self = [super init];
    if (self) {
        
        [self getMyTestItems];
    }
    return self;
}

#pragma mark - ___VARIABLE_moduleName___Model methods

/** Implement ___VARIABLE_moduleName___Model methods here */

- (void)getMyTestItems {
    self.items = @[@"Item 1", @"Item 2", @"Item 3", @"Hello", @"World"];
}


#pragma mark - Private methods

/** Implement private methods here */


@end
