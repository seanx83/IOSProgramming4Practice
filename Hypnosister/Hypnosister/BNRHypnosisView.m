//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by SeanXiang on 07/10/2016.
//  Copyright © 2016 SeanXiang. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    float radius = (MIN(bounds.size.width,bounds.size.height)) / 2.0;
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    path.lineWidth = 10;
    
    [[UIColor lightGrayColor] setStroke];
    
    [path stroke];
    
    // ------------------------------------------------------------------------------------------------------------
        UIBezierPath *cpath = [[UIBezierPath alloc] init];
    CGPoint point1 = CGPointMake(bounds.size.width / 2.0, 100);
        CGPoint point2 = CGPointMake(bounds.size.width / 2.0 - 30, 300);
        CGPoint point3 = CGPointMake(bounds.size.width / 2.0 + 30, 300);
    
        [cpath moveToPoint:point1];
        [cpath addLineToPoint:point2];
        [cpath addLineToPoint:point3];
        [cpath addLineToPoint:point1];
    
    CGFloat locations[2] = {0.0, 1.0};
    CGFloat components[8] = {1.0, 0.0, 1.0, 1.0,
        0.0, 1.0, 1.0, 1.0};

    CGContextSaveGState(currentContext);
    [cpath addClip];
//    CGPoint point1 = CGPointMake(bounds.size.width / 2.0, 100);
//    CGPoint point2 = CGPointMake(bounds.size.width / 2.0 - 30, 300);
//    CGPoint point3 = CGPointMake(bounds.size.width / 2.0 + 30, 300);
//    
//    [cpath moveToPoint:point1];
//    [cpath addLineToPoint:point2];
//    [cpath addLineToPoint:point3];
//    [cpath addLineToPoint:point1];
//    CGContextAddPath(currentContext, cpath.CGPath);
    CGContextClip(currentContext);
    
//    CGContextClipToRect(currentContext, CGRectMake(20, 100, 40, 200));
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    
    CGPoint startPoint = CGPointMake(0, 100);
    CGPoint endPoint = CGPointMake(0, 300);
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    CGContextRestoreGState(currentContext);
    
    // ------------------------------------------------------------------------------------------------------------
    
    
    UIImage *logImage = [UIImage imageNamed:@"logo.png"];
    
    
    CGContextSaveGState(currentContext);
    CGContextSetShadow(currentContext, CGSizeMake(4,7), 3);
    
    [logImage drawInRect:bounds];
    
    CGContextRestoreGState(currentContext);
}


@end
