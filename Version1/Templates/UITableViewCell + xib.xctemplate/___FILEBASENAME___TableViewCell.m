//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_moduleName___TableViewCell.h"

@interface ___VARIABLE_moduleName___TableViewCell()

// add view private properties/outlets/methods here

@end


@implementation ___VARIABLE_moduleName___TableViewCell

@synthesize delegate = _delegate;

- (void)awakeFromNib {
    [super awakeFromNib];
}

#pragma mark - ___VARIABLE_moduleName___CellProtocol

/** Implement cell interface methods here */
- (void)setTitle:(NSString *)title {
    self.textLabel.text = title;
}

#pragma mark - IBActions

- (IBAction)someButtonAction:(id)sender {
    [self.delegate cellDidTapSomeButton:self];
}

@end
