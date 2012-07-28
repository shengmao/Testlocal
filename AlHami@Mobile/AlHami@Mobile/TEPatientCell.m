//
//  TEPatientCell.m
//  AlHami@Mobile
//
//  Created by Sandra Möller on 20.06.12.
//  Copyright (c) 2012 Techedge. All rights reserved.
//

#import "TEPatientCell.h"

@implementation TEPatientCell
@synthesize patientname;
@synthesize patientsurname;
@synthesize patientpicture;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
