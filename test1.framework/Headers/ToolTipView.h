//
//  ToolTipView.h
//  parserApp
//
//  Created by Ekta Bhattarai on 25/5/19.
//  Copyright © 2019 testOrg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToolTipView : UIView
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (nonatomic, weak) IBOutlet UILabel *descLabel;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *userImgView;
@property (nonatomic, weak) IBOutlet UIImageView *petImgView;

@end

NS_ASSUME_NONNULL_END
