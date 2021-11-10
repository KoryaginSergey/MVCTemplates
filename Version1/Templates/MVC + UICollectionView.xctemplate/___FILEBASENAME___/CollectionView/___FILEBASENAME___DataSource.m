//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___DataSource.h"
#import "___VARIABLE_moduleName___CollectionViewCell.h"

static NSString *cellReuseIdentifier = @"___VARIABLE_moduleName___CollectionViewCell";

@interface ___VARIABLE_moduleName___DataSource()

@property (nonatomic, strong) NSObject<___VARIABLE_moduleName___ModelProtocol> *model;

@end

@implementation ___VARIABLE_moduleName___DataSource

- (id)initWithModel:(NSObject<___VARIABLE_moduleName___ModelProtocol> *)model {
    
    self = [super init];
    
    if (self) {
        NSParameterAssert(model);
        _model = model;
    }
    
    return self;
}

- (void)registerNibsForCollectionView:(UICollectionView *)collectionView {
    [collectionView registerNib:[UINib nibWithNibName:@"___VARIABLE_moduleName___CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:cellReuseIdentifier];
}


#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.model.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ___VARIABLE_moduleName___CollectionViewCell *cell = (___VARIABLE_moduleName___CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:indexPath];
    
    // set cell delegate
    cell.delegate = self.cellDelegate;
    
    NSString *testItem = self.model.items[indexPath.row];
    
    [self configureCell:cell forItem:testItem];
    
    return cell;
}


#pragma mark -

- (void)configureCell:(___VARIABLE_moduleName___CollectionViewCell *)cell forItem:(NSString *)item {
    
    cell.textLabel.text = item;
}


@end
