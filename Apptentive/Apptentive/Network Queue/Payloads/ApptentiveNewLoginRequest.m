//
//  ApptentiveNewLoginRequest.m
//  Apptentive
//
//  Created by Frank Schmitt on 4/21/17.
//  Copyright © 2017 Apptentive, Inc. All rights reserved.
//

#import "ApptentiveNewLoginRequest.h"
#import "ApptentiveAppInstall.h"
#import "ApptentiveDefines.h"


@implementation ApptentiveNewLoginRequest

- (instancetype)initWithAppInstall:(id<ApptentiveAppInstall>)appInstall {
	APPTENTIVE_CHECK_INIT_NOT_EMPTY_ARG(appInstall.token);

	return [super initWithAppInstall:appInstall];
}

- (NSDictionary *)JSONDictionary {
	NSMutableDictionary *result = [super.JSONDictionary mutableCopy];

	result[@"token"] = self.appInstall.token;

	return result;
}

@end