//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___ViewController.h"
#import "___VARIABLE_moduleName___Model.h"
#import "___VARIABLE_moduleName___View.h"


@interface ___VARIABLE_moduleName___ViewController () <___VARIABLE_moduleName___ModelDelegate, ___VARIABLE_moduleName___ViewDelegate, UICollectionViewDelegate, ___VARIABLE_moduleName___CellDelegate>

@property (nonatomic, strong) NSObject<___VARIABLE_moduleName___ModelProtocol> *model;

/** @brief Overriding view property */
@property (nonatomic, strong) UIView<___VARIABLE_moduleName___ViewProtocol> *view;

@property (nonatomic, strong) ___VARIABLE_moduleName___DataSource * dataSource;

@property (nonatomic, strong) ___VARIABLE_moduleName___Router *router;

@end


@implementation ___VARIABLE_moduleName___ViewController

@dynamic view;
@dynamic model;
@dynamic router;


#pragma mark - Initialization

- (nullable id)initWithView:(nonnull UIView<___VARIABLE_moduleName___ViewProtocol> *)view model:(nonnull NSObject<___VARIABLE_moduleName___ModelProtocol> *)model router:(nullable ___VARIABLE_moduleName___Router *)router dataSource:(nonnull ___VARIABLE_moduleName___DataSource *)dataSource {
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil view:view model:model];
    if (self) {
        self.model.delegate = self;
        self.router = router;
        
        _dataSource = dataSource;
        _dataSource.cellDelegate = self;
        
        
        // your custom code
    }
    return self;
}


#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.delegate = self;
    [self connectCollectionViewDependencies];
    
    // your custom code
}

- (void)connectCollectionViewDependencies {
    self.view.collectionView.delegate = self;
    [self.dataSource registerNibsForCollectionView:self.view.collectionView];
    self.view.collectionView.dataSource = self.dataSource;
}

#pragma mark - UICollectionView delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    [self.router navigateToSomeScreenFromViewController:self withBackgroundColor:[UIColor orangeColor]];
}


#pragma mark - ___VARIABLE_moduleName___ViewDelegate

/** Implement ___VARIABLE_moduleName___ViewDelegate methods here */

- (void)viewSomeAction:(UIView<___VARIABLE_moduleName___ViewProtocol> *)view {
    NSLog(@"Something happened on view!");
}


#pragma mark - ___VARIABLE_moduleName___ModelDelegate

- (void)modelDidChanged:(NSObject<___VARIABLE_moduleName___ModelProtocol> *)model {
    
}


#pragma mark - ___VARIABLE_moduleName___CellDelegate

/** Implement ___VARIABLE_moduleName___CellDelegate methods here */

- (void)cellDidTapSomeButton:(UICollectionViewCell *)cell {
    
    NSIndexPath *indexPath = [self.view.collectionView indexPathForCell:cell];
    
    NSLog(@"Cell at index path (section: %ld, row: %ld) did tap some button", (long)indexPath.section, (long)indexPath.row);
}


#pragma mark - Private

/** Implement any private methods here */

@end
