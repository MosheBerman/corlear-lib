//
//  CRLFileManager.m
//  CRLCoreLib
//
//  Created by Moshe on 6/25/14.
//  Copyright (c) 2014 Corlear Apps. All rights reserved.
//

#import "CRLFileManager.h"

@implementation CRLFileManager

/**
 *  @return A singleton instance of the manager.
 */

+ (instancetype)sharedManager
{
    static CRLFileManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[CRLFileManager alloc] init];
    });
    
    return manager;
}


@end
