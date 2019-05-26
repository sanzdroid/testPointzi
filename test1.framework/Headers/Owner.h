//
//  Owner.h
//  parserApp
//
//  Created by Ekta Bhattarai on 25/5/19.
//  Copyright © 2019 testOrg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Owner : NSObject
@property(nonatomic,strong) NSString* image;
@property(nonatomic,strong) NSString* firstName;
@property(nonatomic,strong) NSString* lastName;
@property(nonatomic,strong) NSString* nameTitle;


-(id) initWithNameTitle:(NSString*)nameTitle firstName:(NSString*)firstName lastName:(NSString*)lastName andimage:(NSString*)image;
-(NSString*) getName;
-(NSString*) getImage;
@end

NS_ASSUME_NONNULL_END
