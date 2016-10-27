//
//  ViewController.m
//  Color
//
//  Created by admin on 16/10/27.
//  Copyright © 2016年 wyx. All rights reserved.
//

#import "ViewController.h"
#import "SelectColorPickerView.h"
@interface ViewController ()<SelectColorPickerViewDelegate>
@property (weak, nonatomic) IBOutlet SelectColorPickerView *selectview;

@property (weak, nonatomic) IBOutlet UILabel *colorR;
@property (weak, nonatomic) IBOutlet UILabel *colorG;
@property (weak, nonatomic) IBOutlet UILabel *colorB;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.selectview.delegate = self;
}

-(void)getCurrentColor:(UIColor *)color{
    
    [self sendColorCmdWithColor:color];
}


-(void)sendColorCmdWithColor:(UIColor *)color{
    
    const CGFloat  *components = CGColorGetComponents(color.CGColor);
    int R = components[0] * 255;
    int G = components[1] * 255;
    int B = components[2] * 255;
    
    _colorR.text = [NSString stringWithFormat:@"%d",R];
    _colorG.text = [NSString stringWithFormat:@"%d",G];
    _colorB.text = [NSString stringWithFormat:@"%d",B];
    
    
}

@end
