//
//  ATViewObject.m
//  ATLoadingView
//
//  Created by liyebiao on 2021/4/23.
//

#import "ATViewObject.h"
#import "ATViewConfig.h"

@implementation ATViewObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _config = [[ATViewConfig alloc] init];
    }
    return self;
}

- (void)beginLoading {
    [self.ownerView beginLoading];
}

- (void)empty {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView empty];
    });
}

- (void)endLoading {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView endLoading];
    });
}

- (void)error {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView error];
    });
}

- (void)noNetwork {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView noNetwork];
    });
}

- (void)beginLoading:(BOOL)scrollEnabled{
    [self.ownerView beginLoading:scrollEnabled];
}

- (void)empty:(BOOL)scrollEnabled{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView empty:scrollEnabled];
    });
}

- (void)error:(BOOL)scrollEnabled{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView error:scrollEnabled];
    });
}

- (void)noNetwork:(BOOL)scrollEnabled{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.ownerView noNetwork:scrollEnabled];
    });
}


@end
