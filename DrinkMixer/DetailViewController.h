//
//  DetailViewController.h
//  DrinkMixer
//
//  Created by Administrator on 8/15/14.
//  Copyright (c) 2014 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    @private
    UITextField *nameTextField_;
    UITextView *ingredientsTextView_;
    UITextView *directionsTextView_;
    NSDictionary *drink_;
}

@property (nonatomic, retain) IBOutlet NSDictionary *drink;
@property (nonatomic, retain) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UITextView *ingredientsTextView;
@property (nonatomic, retain) IBOutlet UITextView *directionsTextView;

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
