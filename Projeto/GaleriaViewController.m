//
//  GaleriaViewController.m
//  Projeto
//
//  Created by Karen Garcia dos Santos on 26/02/15.
//  Copyright (c) 2015 Karen Garcia dos Santos. All rights reserved.
//

#import "GaleriaViewController.h"

@interface GaleriaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *FirstImage;

@property (weak, nonatomic) IBOutlet UIImageView *secondImage;

@property (weak, nonatomic) IBOutlet UIImageView *thirdImage;

@property (weak, nonatomic) IBOutlet UIButton *voltar;

@property (nonatomic)  NSString *parameter;

@end

@implementation GaleriaViewController


-(void)setImages: (NSString *)parameter
{
    _parameter = parameter;
    if([parameter isEqualToString:@"I"]){
        
        
        
    } else if([parameter isEqualToString: @"E"]){
        
    }
}

-(void)showImages: (NSArray *)images{
    
    
}


- (IBAction)voltarAction:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
