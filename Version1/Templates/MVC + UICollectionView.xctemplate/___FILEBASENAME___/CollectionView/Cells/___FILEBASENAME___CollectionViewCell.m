//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___CollectionViewCell.h"

@interface ___VARIABLE_moduleName___CollectionViewCell()

@end


@implementation ___VARIABLE_moduleName___CollectionViewCell

@synthesize delegate = _delegate;

- (void)awakeFromNib {
    [super awakeFromNib];
}

#pragma mark - ___VARIABLE_moduleName___CellProtocol




#pragma mark - IBActions

/** Implement any cell actions here, notify delegate about the action */



// iOS 8+ performance fix, helps to avoid layout recalculation every time the cell is reused
- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    return layoutAttributes;
}

@end
