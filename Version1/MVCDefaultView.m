//
//  MVCKeyboardAvoidingView.m
//  EmojiTones
//
//  Created by Serg Smyk on 04/10/2016.
//  Copyright © 2016 Emoji Technologies Limited. All rights reserved.
//

#import "MVCDefaultView.h"

@implementation MVCDefaultView

- (void)dealloc
{
    [self resetKeyboardAvoidingObserver];
}

- (void)resetKeyboardAvoidingObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

- (void)setKeyboardAvoidingScrollView:(UIScrollView *)keyboardAvoidingScrollView {
    _keyboardAvoidingScrollView = keyboardAvoidingScrollView;
    [self resetKeyboardAvoidingObserver];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidShow:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

-(void)keyboardDidShow:(NSNotification *)notif {
    if (self.keyboardAvoidingScrollView != nil) {
        NSDictionary * dictInfo = notif.userInfo;
        CGRect rect = [[dictInfo valueForKey:@"UIKeyboardFrameBeginUserInfoKey"] CGRectValue];
        UIEdgeInsets insets = UIEdgeInsetsMake(self.keyboardAvoidingScrollView.contentInset.top, 0, rect.size.height, 0);
        self.keyboardAvoidingScrollView.contentInset = insets;
        self.keyboardAvoidingScrollView.scrollIndicatorInsets = insets;
    }
}

-(void)keyboardWillHide:(NSNotification *)notif {
    if (self.keyboardAvoidingScrollView != nil) {
        UIEdgeInsets insets = UIEdgeInsetsMake(self.keyboardAvoidingScrollView.contentInset.top, 0, 0, 0);
        self.keyboardAvoidingScrollView.contentInset = insets;
        self.keyboardAvoidingScrollView.scrollIndicatorInsets = insets;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
