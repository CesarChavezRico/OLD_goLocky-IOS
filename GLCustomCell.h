//
//  GLCustomCell.h
//  goLocky
//
//  Created by Chapo on 3/25/14.
//  Copyright (c) 2014 goLocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLCustomCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagenRestaurante;
@property (weak, nonatomic) IBOutlet UILabel *nombreRestaurante;
@property (weak, nonatomic) IBOutlet UILabel *direccionRestaurante;
@property (weak, nonatomic) IBOutlet UILabel *numeroVisitas;
@property (weak, nonatomic) IBOutlet UILabel *recompensa;

@end
