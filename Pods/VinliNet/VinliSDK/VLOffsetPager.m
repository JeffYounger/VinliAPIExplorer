//
//  VLOffsetPager.m
//  VinliSDK
//
//  Created by Tommy Brown on 5/26/15.
//  Copyright (c) 2015 Vinli. All rights reserved.
//

#import "VLOffsetPager.h"

@implementation VLOffsetPager

- (id) initWithDictionary:(NSDictionary *)dictionary{
    self = [super initWithDictionary:dictionary];
    if(self){
        if(dictionary && dictionary[@"meta"] && dictionary[@"meta"][@"pagination"]){
            _total = [dictionary[@"meta"][@"pagination"][@"total"] unsignedLongValue];
            _offset = [dictionary[@"meta"][@"pagination"][@"offset"] unsignedLongValue];
            if(dictionary[@"meta"][@"pagination"][@"links"]){
                _firstURL = [NSURL URLWithString:dictionary[@"meta"][@"pagination"][@"links"][@"first"]];
                _nextURL = [NSURL URLWithString:dictionary[@"meta"][@"pagination"][@"links"][@"next"]];
                _lastURL = [NSURL URLWithString:dictionary[@"meta"][@"pagination"][@"links"][@"last"]];
            }
        }
    }
    return self;
}

@end
