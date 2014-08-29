//
//  ExerciseTableViewCell.m
//  inb348
//
//  Created by Dongmin Lee on 29/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "ExerciseTableViewCell.h"

@implementation ExerciseTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
