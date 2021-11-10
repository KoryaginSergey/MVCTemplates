//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>

#import "___VARIABLE_moduleName___CellDelegate.h"

@interface ___VARIABLE_moduleName___CollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) id <___VARIABLE_moduleName___CellDelegate> delegate;
@property (nonatomic, strong) IBOutlet UILabel *textLabel;

@end
