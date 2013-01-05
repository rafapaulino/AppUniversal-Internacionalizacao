//
//  PrincipalViewController.h
//  AppUniversal-Internacionalizacao
//
//  Created by Rafael Brigagão Paulino on 26/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *minhaView;
@property (strong, nonatomic) IBOutlet UILabel *lblAnimacao;
@property (strong, nonatomic) IBOutlet UIButton *btnAnimar;

-(IBAction)animar:(id)sender;

@end
