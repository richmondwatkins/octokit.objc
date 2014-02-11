//
//  OCTGitCommit.m
//  OctoKit
//
//  Created by Piet Brauer on 09.02.14.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import "OCTGitCommit.h"
#import "NSValueTransformer+OCTPredefinedTransformerAdditions.h"

@implementation OCTGitCommit

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return [super.JSONKeyPathsByPropertyKey mtl_dictionaryByAddingEntriesFromDictionary:@{
		@"commitURL": @"url",
		@"SHA": @"sha",
		@"message": @"commit.message",
		@"commitDate": @"commit.author.date"
	}];
}

+ (NSValueTransformer *)commitURLJSONTransformer {
	return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)authorJSONTransformer {
	return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:OCTUser.class];
}

+ (NSValueTransformer *)committerJSONTransformer {
	return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:OCTUser.class];
}

+ (NSValueTransformer *)commitDateJSONTransformer {
	return [NSValueTransformer valueTransformerForName:OCTDateValueTransformerName];
}

@end
