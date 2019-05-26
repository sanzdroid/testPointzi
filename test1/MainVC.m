//
//  MainVC.m
//  parserApp
//
//  Created by Sangam Shrestha on 24/5/19.
//  Copyright © 2019 testOrg. All rights reserved.
//

#import "MainVC.h"
#import "ToolTipView.h"

#define kAppTestUrl [NSURL URLWithString:@"https://dummyapi.io/api/post?limit=1"]

@interface MainVC ()

@end

@implementation MainVC


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
+(void)completeData : (UIView *)view{
    NSError* error;
    NSData *responseData = [NSData dataWithContentsOfURL: kAppTestUrl];
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    NSArray* data = [json objectForKey:@"data"];
    
    for (NSDictionary *dataDict in data){
        NSString* message = [dataDict objectForKey:@"message"];
        NSString* image = [dataDict objectForKey:@"image"];
        NSDictionary* owner = [dataDict objectForKey:@"owner"];
        NSString* firstName = [owner objectForKey:@"firstName"];
        NSString* lastName = [owner objectForKey:@"lastName"];
        NSString* nameTitle = [owner objectForKey:@"nameTitle"];
        NSString* oImage = [owner objectForKey:@"image"];
        
        NSBundle *bundle = [NSBundle bundleForClass:[MainVC class]];
        UINib *nib = [UINib nibWithNibName:@"ToolTipView" bundle:bundle];
        ToolTipView *toolTipView = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
        toolTipView.layer.cornerRadius = 10.0;
        toolTipView.center = view.center;
        
        NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:image]];
        toolTipView.petImgView.image = [UIImage imageWithData:imageData];
        toolTipView.descLabel.text = message;
        
        NSString * fullname = [NSString stringWithFormat:@"%@ %@ %@", nameTitle,firstName,lastName];
        toolTipView.nameLabel.text = fullname;
        
        NSData *ownerImage = [NSData dataWithContentsOfURL:[NSURL URLWithString:oImage]];
        toolTipView.userImgView.image = [UIImage imageWithData:ownerImage];
        
        [view addSubview:toolTipView];
    }
}


@end
