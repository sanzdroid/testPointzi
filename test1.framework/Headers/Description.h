//
//  Description.h
//  parserApp
//
//  Created by Ekta Bhattarai on 25/5/19.
//  Copyright © 2019 testOrg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Description : NSObject
@property(nonatomic,strong) NSString* image;
@property(nonatomic,strong) NSString* message;

-(id) initWithMessage:(NSString*)message andimage:(NSString*)image;
-(NSString*) getMessage;
-(NSString*) getImage;
@end

NS_ASSUME_NONNULL_END
