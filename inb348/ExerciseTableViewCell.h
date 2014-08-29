//
//  ExerciseTableViewCell.h
//  inb348
//
//  Created by Dongmin Lee on 29/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseTableViewCell : UITableViewCell

@property(nonatomic,weak)IBOutlet UILabel *nameStr;
@property(nonatomic,weak)IBOutlet UILabel *instructionStr;
@property(nonatomic,weak)IBOutlet UIImageView *coverImageView;

@end
