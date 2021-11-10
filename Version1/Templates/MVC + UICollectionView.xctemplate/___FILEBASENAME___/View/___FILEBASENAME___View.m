//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___View.h"

static const NSUInteger kNumCollectionViewColumns = 3;

@interface ___VARIABLE_moduleName___View()

// add view private properties/outlets/methods here

@end

@implementation ___VARIABLE_moduleName___View

@synthesize delegate = _delegate;
@synthesize collectionView = _collectionView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // setup view and table view programmatically here
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.keyboardAvoidingScrollView = self.collectionView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self calculateCollectionViewFlowlayout];
}

#pragma mark ___VARIABLE_moduleName___View interface methods

/** Implement ___VARIABLE_moduleName___View inteface methods here */

- (void)calculateCollectionViewFlowlayout {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    
    CGFloat inset = 8;
    
    flowLayout.sectionInset = UIEdgeInsetsMake(inset, inset, inset, inset);
    flowLayout.minimumInteritemSpacing = inset;
    flowLayout.minimumLineSpacing = inset;
    
    CGFloat columns = (CGFloat)kNumCollectionViewColumns;
    CGFloat itemWidth = (self.collectionView.bounds.size.width - inset * (columns + 1)) / columns;
    
    flowLayout.itemSize = CGSizeMake(itemWidth, itemWidth);
}


#pragma mark - IBActions

/** Put IBActions here, notify controller via delegate if needed */

// example
- (IBAction)someButtonAction:(UIButton *)sender {
    
    [self.delegate viewSomeAction:self];
}


@end
