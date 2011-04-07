//
//  DetailsHeaderView.m
//  newsyc
//
//  Created by Grant Paul on 3/6/11.
//  Copyright 2011 Xuzz Productions, LLC. All rights reserved.
//

#import "DetailsHeaderView.h"

@implementation DetailsHeaderView
@synthesize delegate, entry;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    
    return self;
}

+ (CGSize)offsets {
    return CGSizeMake(8.0f, 4.0f);
}

- (void)setEntry:(HNEntry *)entry_ {
    [entry autorelease];
    entry = [entry_ retain];
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    [self setNeedsDisplay];
}

- (CGFloat)suggestedHeightWithWidth:(CGFloat)width {
    return 0;
}

- (void)dealloc {
    [entry release];
    [super dealloc];
}

@end
