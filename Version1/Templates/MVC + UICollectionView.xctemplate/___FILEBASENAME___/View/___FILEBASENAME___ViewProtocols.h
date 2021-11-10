//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>

@protocol ___VARIABLE_moduleName___ViewProtocol;

/** Delegate */
@protocol ___VARIABLE_moduleName___ViewDelegate <NSObject>

// delegate method example
- (void)viewSomeAction:(UIView<___VARIABLE_moduleName___ViewProtocol> *)view;

@end

/** Interface */
@protocol ___VARIABLE_moduleName___ViewProtocol <NSObject>

@property (strong, nonatomic) UICollectionView *collectionView;

@property (nonatomic, weak) id<___VARIABLE_moduleName___ViewDelegate> delegate;

// implement view interface methods here

@end

