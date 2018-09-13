/*   Copyright 2017 Prebid.org, Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "PBBidResponse.h"
#import "PBKeywordsManager.h"

#pragma mark Constants
NSString *__nonnull const PBKeywordsManagerPreBidBidderCodeKey = @"hb_bidder";
NSString *__nonnull const PBKeywordsManagerPreBidCacheIdKey = @"hb_cache_id";
NSString *__nonnull const PBKeywordsManagerPriceHbpbKey = @"hb_pb";

#pragma mark

@implementation PBKeywordsManager

+ (NSArray *)reservedKeys {
    static dispatch_once_t reservedKeysToken;
    static NSArray *keys;
    dispatch_once(&reservedKeysToken, ^{
        keys = @[PBKeywordsManagerPreBidBidderCodeKey,
                 PBKeywordsManagerPriceHbpbKey,
                 PBKeywordsManagerPreBidCacheIdKey];
    });
    return keys;
}

@end
