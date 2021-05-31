//
//  PBMInterstitialEventHandlerStandalone.m
//  OpenXSDKCore
//
//  Copyright © 2020 OpenX. All rights reserved.
//

#import "PBMInterstitialEventHandlerStandalone.h"

@implementation PBMInterstitialEventHandlerStandalone

@synthesize loadingDelegate = _loadingDelegate;
@synthesize interactionDelegate = _interactionDelegate;

- (BOOL)isReady {
    return NO;
}

- (void)requestAdWithBidResponse:(nullable BidResponse *)bidResponse {
    [self.loadingDelegate prebidDidWin];
}

- (void)showFromViewController:(UIViewController *)controller {
    // nop -- should never be called, as PBM SDK always wins
}

@end
