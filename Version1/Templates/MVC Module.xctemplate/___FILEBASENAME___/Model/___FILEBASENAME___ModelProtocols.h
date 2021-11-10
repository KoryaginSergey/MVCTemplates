//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@protocol ___VARIABLE_moduleName___ModelProtocol;

@protocol ___VARIABLE_moduleName___ModelDelegate <NSObject>

// example method
- (void)modelDidChanged:(NSObject<___VARIABLE_moduleName___ModelProtocol> *)model;

@end


@protocol ___VARIABLE_moduleName___ModelProtocol <NSObject>

@property (nonatomic, weak) id<___VARIABLE_moduleName___ModelDelegate> delegate;

// implement model interface methods here

@end
