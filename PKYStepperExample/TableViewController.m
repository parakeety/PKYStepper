//
//  TableViewController.m
//  PKYStepper
//
//  Created by Okada Yohei on 1/25/15.
//  Copyright (c) 2015 yohei okada. All rights reserved.
//

#import "TableViewController.h"

#import "ViewController.h"
#import "StoryboardViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0: {
            ViewController *viewController = [[ViewController alloc] init];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
            
        case 1: {
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardViewController"
                                                                 bundle:nil];
            StoryboardViewController *viewController = (StoryboardViewController *)[storyboard instantiateInitialViewController];
            [self.navigationController pushViewController:viewController animated:YES];
        }
            
            break;
    }
}

@end
