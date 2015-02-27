//
//  ViewController.m
//  Projeto
//
//  Created by Karen Garcia dos Santos on 26/02/15.
//  Copyright (c) 2015 Karen Garcia dos Santos. All rights reserved.
//

#import "ViewController.h"
#import "GaleriaViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *imgInspiradoras;

@property (weak, nonatomic) IBOutlet UILabel *lblInspiradoras;

@property (weak, nonatomic) IBOutlet UIButton *imgEngracadas;

@property (weak, nonatomic) IBOutlet UILabel *lblEngracadas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)voltar:( UIStoryboardSegue *) segue{
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"Inspiradoras"]){
        
        [(GaleriaViewController*)segue.destinationViewController setImages: @"I"];
        
        
    } else if([segue.identifier isEqualToString:@"Engracadas"]){
        
        [(GaleriaViewController*)segue.destinationViewController setImages: @"E"];
    }
}


 - (IBAction)openInspiradoras:(id)sender {
    
    
}

- (IBAction)openEngracadas:(id)sender {
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
