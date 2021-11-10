//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___DataSource.h"
#import "___VARIABLE_moduleName___TableViewCell.h"

static NSString *cellReuseIdentifier = @"___VARIABLE_moduleName___TableViewCell";

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

- (void)registerNibsForTableView:(UITableView *)tableView {
    [tableView registerNib:[UINib nibWithNibName:@"___VARIABLE_moduleName___TableViewCell" bundle:nil] forCellReuseIdentifier:cellReuseIdentifier];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.model.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ___VARIABLE_moduleName___TableViewCell *cell = (___VARIABLE_moduleName___TableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier];
    
    // set cell delegate
    cell.delegate = self.cellDelegate;
    
    NSString *testItem = self.model.items[indexPath.row];
    
    [self configureCell:cell forItem:testItem];
    
    return cell;
}


#pragma mark -

- (void)configureCell:(___VARIABLE_moduleName___TableViewCell *)cell forItem:(NSString *)item {
    
    cell.titleLabel.text = item;
}


@end
