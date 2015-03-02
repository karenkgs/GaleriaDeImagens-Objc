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

@property (nonatomic)  NSArray *imageOne;

@property (nonatomic)  NSArray *imageTwo;

@property (nonatomic)  NSArray *imageThree;

@property (weak, nonatomic) IBOutlet UIImageView *viewOne;

@property (weak, nonatomic) IBOutlet UIImageView *viewTwo;

@property (weak, nonatomic) IBOutlet UIImageView *viewThree;


@end

@implementation GaleriaViewController


-(void)setImages: (NSString *)parameter{
    
    _parameter = parameter;
    
    if([_parameter isEqualToString:@"I"]){
        
        _imageOne = @[@"landing.jpg", @"handsup.jpg"];
        
        _imageTwo = @[@"flowers.jpg", @"girl.jpg"];
        
        _imageThree = @[@"music.jpg", @"smile.jpg"];
        
    } else if([_parameter isEqualToString: @"E"]){
        
        _imageOne = @[@"kid.jpg", @"cup.jpg"];
        
        _imageTwo = @[@"dog.jpg", @"noz.jpg"];
        
        _imageThree = @[@"mercury.jpg", @"kids.jpg"];
        
        
    }

}


-(void)showImages{
    
    
        NSMutableArray *images = [[NSMutableArray alloc] init];
        for (int i = 0; i < _imageOne.count; i++) {
            [images addObject:[UIImage imageNamed:[_imageOne objectAtIndex:i]]];
        }
        
        
        _viewOne.animationImages = images;
        _viewOne.animationDuration = 2.5;
        
        
        NSMutableArray *imagesTwo = [[NSMutableArray alloc] init];
        for (int i = 0; i < _imageTwo.count; i++) {
            [imagesTwo addObject:[UIImage imageNamed:[_imageTwo objectAtIndex:i]]];
        }
        
        _viewTwo.animationImages = imagesTwo;
        _viewTwo.animationDuration = 3.5;
        
        
        NSMutableArray *imagesThree = [[NSMutableArray alloc] init];
        for (int i = 0; i < _imageThree.count; i++) {
            [imagesThree addObject:[UIImage imageNamed:[_imageThree objectAtIndex:i]]];
        }
        
        _viewThree.animationImages = imagesThree;
        _viewThree.animationDuration = 4.5;
        
        
        [_viewOne startAnimating];
        [_viewTwo startAnimating];
        [_viewThree startAnimating];
        
    
}




- (IBAction)voltarAction:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showImages];
    
    
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
