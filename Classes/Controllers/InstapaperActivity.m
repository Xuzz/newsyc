//
//  ReadLaterActivity.m
//  newsyc
//
//  Created by Mark Nemec on 22/10/12.
//
//

#import "InstapaperActivity.h"
#import "InstapaperController.h"

@implementation InstapaperActivity

- (NSString *)activityType {
    return @"Read Later";
}

- (NSString *)activityTitle {
    return @"Read Later";
}

- (UIImage *)activityImage {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        return [UIImage imageNamed:@"instapaper-ipad"];
    }
    return [UIImage imageNamed:@"instapaper"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    URL = [activityItems objectAtIndex:0];
}

- (UIViewController *)activityViewController {
    return [[InstapaperController sharedInstance] submitURL:URL];
}

- (void)performActivity {
    [self activityViewController];
    [self activityDidFinish:YES];
}

@end
