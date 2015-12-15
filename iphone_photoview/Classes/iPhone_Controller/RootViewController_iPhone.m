//
//  RootViewController_iPhone.m
//  EGOPhotoViewer_Demo
//
//  Created by Devin Doty on 7/3/10July3.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RootViewController_iPhone.h"
#import "EGOPhotoGlobal.h"
#import "MyPhoto.h"
#import "MyPhotoSource.h"

@implementation RootViewController_iPhone


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.title = @"首页";
    
    MyPhoto *photo = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"]]];
    MyPhoto *photo2 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"]]];
    MyPhoto *photo3 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"]]];
    MyPhoto *photo4 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"4" ofType:@"jpg"]]];
    MyPhoto *photo5 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"5" ofType:@"jpg"]]];
    MyPhoto *photo6 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"6" ofType:@"jpg"]]];
    MyPhoto *photo7 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"7" ofType:@"jpg"]]];
    MyPhoto *photo8 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"8" ofType:@"jpg"]]];
    MyPhoto *photo9 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"9" ofType:@"jpg"]]];
    MyPhoto *photo10 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"10" ofType:@"jpg"]]];
    MyPhoto *photo11 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"11" ofType:@"jpg"]]];
    MyPhoto *photo12 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"12" ofType:@"jpg"]]];
    MyPhoto *photo13 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"13" ofType:@"jpg"]]];
    MyPhoto *photo14 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"14" ofType:@"jpg"]]];
    MyPhoto *photo15 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"15" ofType:@"jpg"]]];
    MyPhoto *photo16 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"16" ofType:@"jpg"]]];
    MyPhoto *photo17 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"17" ofType:@"jpg"]]];
    MyPhoto *photo18 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"18" ofType:@"jpg"]]];
    MyPhoto *photo19 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"19" ofType:@"jpg"]]];
    MyPhoto *photo20 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"20" ofType:@"jpg"]]];
    MyPhoto *photo21 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"21" ofType:@"jpg"]]];
    MyPhoto *photo22 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"22" ofType:@"jpg"]]];
    MyPhoto *photo23 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"23" ofType:@"jpg"]]];
    MyPhoto *photo24 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"24" ofType:@"jpg"]]];
    MyPhoto *photo25 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"25" ofType:@"jpg"]]];
    MyPhoto *photo26 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"26" ofType:@"jpg"]]];
    MyPhoto *photo27 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"27" ofType:@"jpg"]]];
    MyPhoto *photo28 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"28" ofType:@"jpg"]]];
    MyPhoto *photo29 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"29" ofType:@"jpg"]]];
    MyPhoto *photo30 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"30" ofType:@"jpg"]]];
    MyPhoto *photo31 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"31" ofType:@"jpg"]]];
    MyPhoto *photo32 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"32" ofType:@"jpg"]]];
    MyPhoto *photo33 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"33" ofType:@"jpg"]]];
    MyPhoto *photo34 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"34" ofType:@"jpg"]]];
    MyPhoto *photo35 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"35" ofType:@"jpg"]]];
    MyPhoto *photo36 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"36" ofType:@"jpg"]]];
    MyPhoto *photo37 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"37" ofType:@"jpg"]]];
    MyPhoto *photo38 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"38" ofType:@"jpg"]]];
    MyPhoto *photo39 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"39" ofType:@"jpg"]]];
    MyPhoto *photo40 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"40" ofType:@"jpg"]]];
    MyPhoto *photo41 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"41" ofType:@"jpg"]]];  
    MyPhoto *photo42 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"42" ofType:@"jpg"]]];  
    MyPhoto *photo43 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"43" ofType:@"jpg"]]];  
    MyPhoto *photo44 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"44" ofType:@"jpg"]]];  
    MyPhoto *photo45 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"45" ofType:@"jpg"]]];  
    MyPhoto *photo46 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"46" ofType:@"jpg"]]];  
    MyPhoto *photo47 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"47" ofType:@"jpg"]]];  
    MyPhoto *photo48 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"48" ofType:@"jpg"]]];  
    MyPhoto *photo49 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"49" ofType:@"jpg"]]];  
    MyPhoto *photo50 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"50" ofType:@"jpg"]]];  
    MyPhoto *photo51 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"51" ofType:@"jpg"]]];  
    MyPhoto *photo52 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"52" ofType:@"jpg"]]];  
    MyPhoto *photo53 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"53" ofType:@"jpg"]]];  
    MyPhoto *photo54 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"54" ofType:@"jpg"]]];  
    MyPhoto *photo55 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"55" ofType:@"jpg"]]];  
    MyPhoto *photo56 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"56" ofType:@"jpg"]]];  
    MyPhoto *photo57 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"57" ofType:@"jpg"]]];  
    MyPhoto *photo58 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"58" ofType:@"jpg"]]];  
    MyPhoto *photo59 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"59" ofType:@"jpg"]]]; 
    MyPhoto *photo60 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"60" ofType:@"jpg"]]]; 
    MyPhoto *photo61 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"61" ofType:@"jpg"]]];  
    MyPhoto *photo62 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"62" ofType:@"jpg"]]];  
    MyPhoto *photo63 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"63" ofType:@"jpg"]]];  
    MyPhoto *photo64 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"64" ofType:@"jpg"]]];  
    MyPhoto *photo65 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"65" ofType:@"jpg"]]];  
    MyPhoto *photo66 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"66" ofType:@"jpg"]]];  
    MyPhoto *photo67 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"67" ofType:@"jpg"]]];  
    MyPhoto *photo68 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"68" ofType:@"jpg"]]];  
    MyPhoto *photo69 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"69" ofType:@"jpg"]]];  
    MyPhoto *photo70 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"70" ofType:@"jpg"]]]; 
    MyPhoto *photo71 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"71" ofType:@"jpg"]]];  
    MyPhoto *photo72 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"72" ofType:@"jpg"]]];  
    MyPhoto *photo73 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"73" ofType:@"jpg"]]];  
    MyPhoto *photo74 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"74" ofType:@"jpg"]]];  
    MyPhoto *photo75 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"75" ofType:@"jpg"]]]; 
    MyPhoto *photo76 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"76" ofType:@"jpg"]]]; 
    MyPhoto *photo77 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"77" ofType:@"jpg"]]];  
    MyPhoto *photo78 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"78" ofType:@"jpg"]]];  
    MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo, photo2, photo3, photo4, photo5, photo6, photo7, photo8,photo9,photo10,photo11,photo12,photo13,photo14,photo15,photo16,photo17,photo18,photo19,photo20,photo21,photo22,photo23,photo24,photo25,photo26,photo27,photo28,photo29,photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,photo,nil]];
    
    EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
    [self.navigationController pushViewController:photoController animated:YES];
    
    [photoController release];
    [photo release];
    [photo2 release];
    [photo3 release];
    [photo4 release];
    [photo5 release];
    [photo6 release];
    [photo7 release];
    [photo8 release];
    [photo9 release];
    [photo10 release];
    [photo11 release];
    [photo12 release];
    [photo13 release];
    [photo14 release];
    [photo15 release];
    [photo16 release];
    [photo17 release];
    [photo18 release];
    [photo19 release];
    [photo20 release];
    [photo21 release];
    [photo22 release];
    [photo23 release];
    [photo24 release];
    [photo25 release];
    [photo26 release];
    [photo27 release];
    [photo28 release];
    [photo29 release];
    [photo30 release];
    [photo31 release];
    [photo32 release];
    [photo33 release];
    [photo34 release];
    [photo35 release];
    [photo36 release];
    [photo37 release];
    [photo38 release];
    [photo39 release];
    [photo40 release];
    [photo41 release];
    [photo42 release];
    [photo43 release];
    [photo44 release];
    [photo45 release];
    [photo46 release];
    [photo47 release];
    [photo48 release];
    [photo49 release];
    [photo50 release];
    [photo51 release];
    [photo52 release];
    [photo53 release];
    [photo54 release];
    [photo55 release];
    [photo56 release];
    [photo57 release];
    [photo58 release];
    [photo59 release];
    [photo60 release];
    [photo61 release];
    [photo62 release];
    [photo63 release];
    [photo64 release];
    [photo65 release];
    [photo66 release];
    [photo67 release];
    [photo68 release];
    [photo69 release];
    [photo70 release];
    [photo71 release];
    [photo72 release];
    [photo73 release];
    [photo74 release];
    [photo75 release];
    [photo76 release];
    [photo77 release];
    [photo78 release];
    
    [source release];
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 10;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	if (indexPath.row == 0) {
        UIImage *image = [UIImage imageNamed:@"1.jpg"];
        cell.textLabel.text = @"封       面 --------------- 0";
        cell.image = image;
	} else if(indexPath.row == 1){
        UIImage *image = [UIImage imageNamed:@"8.jpg"];
        cell.textLabel.text = @"发展轨迹 --------------- 1";
         cell.image = image;
    } else if(indexPath.row == 2){
        UIImage *image = [UIImage imageNamed:@"14.jpg"];
        cell.textLabel.text = @"文化模型 --------------- 5";
         cell.image = image;
    } else if(indexPath.row == 3){
        UIImage *image = [UIImage imageNamed:@"18.jpg"];
        cell.textLabel.text = @"核心理念 --------------- 7";
         cell.image = image;
    } else if(indexPath.row == 4){
        UIImage *image = [UIImage imageNamed:@"30.jpg"];
        cell.textLabel.text = @"管理方针 --------------- 17";
         cell.image = image;
    } else if(indexPath.row == 5){
        UIImage *image = [UIImage imageNamed:@"42.jpg"];
        cell.textLabel.text = @"行为准则 --------------- 27";
         cell.image = image;
    } else if(indexPath.row == 6){
        UIImage *image = [UIImage imageNamed:@"46.jpg"];
        cell.textLabel.text = @"企业形象 --------------- 29";
        cell.image = image;
    } else if(indexPath.row == 7){
        UIImage *image = [UIImage imageNamed:@"54.jpg"];
        cell.textLabel.text = @"文化名片 --------------- 35";
        cell.image = image;
    } else if(indexPath.row == 8){
        UIImage *image = [UIImage imageNamed:@"62.jpg"];
        cell.textLabel.text = @"文化融合 --------------- 41";
        cell.image = image;
    } else if(indexPath.row == 9){
        UIImage *image = [UIImage imageNamed:@"72.jpg"];
        cell.textLabel.text = @"文化传承 --------------- 49";
        cell.image = image;
    }
	
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyPhoto *photo = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"]]];
    MyPhoto *photo2 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"]]];
    MyPhoto *photo3 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"]]];
    MyPhoto *photo4 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"4" ofType:@"jpg"]]];
    MyPhoto *photo5 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"5" ofType:@"jpg"]]];
    MyPhoto *photo6 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"6" ofType:@"jpg"]]];
    MyPhoto *photo7 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"7" ofType:@"jpg"]]];
    MyPhoto *photo8 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"8" ofType:@"jpg"]]];
    MyPhoto *photo9 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"9" ofType:@"jpg"]]];
    MyPhoto *photo10 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"10" ofType:@"jpg"]]];
    MyPhoto *photo11 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"11" ofType:@"jpg"]]];
    MyPhoto *photo12 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"12" ofType:@"jpg"]]];
    MyPhoto *photo13 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"13" ofType:@"jpg"]]];
    MyPhoto *photo14 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"14" ofType:@"jpg"]]];
    MyPhoto *photo15 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"15" ofType:@"jpg"]]];
    MyPhoto *photo16 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"16" ofType:@"jpg"]]];
    MyPhoto *photo17 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"17" ofType:@"jpg"]]];
    MyPhoto *photo18 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"18" ofType:@"jpg"]]];
    MyPhoto *photo19 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"19" ofType:@"jpg"]]];
    MyPhoto *photo20 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"20" ofType:@"jpg"]]];
    MyPhoto *photo21 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"21" ofType:@"jpg"]]];
    MyPhoto *photo22 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"22" ofType:@"jpg"]]];
    MyPhoto *photo23 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"23" ofType:@"jpg"]]];
    MyPhoto *photo24 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"24" ofType:@"jpg"]]];
    MyPhoto *photo25 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"25" ofType:@"jpg"]]];
    MyPhoto *photo26 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"26" ofType:@"jpg"]]];
    MyPhoto *photo27 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"27" ofType:@"jpg"]]];
    MyPhoto *photo28 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"28" ofType:@"jpg"]]];
    MyPhoto *photo29 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"29" ofType:@"jpg"]]];
    MyPhoto *photo30 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"30" ofType:@"jpg"]]];
    MyPhoto *photo31 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"31" ofType:@"jpg"]]];
    MyPhoto *photo32 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"32" ofType:@"jpg"]]];
    MyPhoto *photo33 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"33" ofType:@"jpg"]]];
    MyPhoto *photo34 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"34" ofType:@"jpg"]]];
    MyPhoto *photo35 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"35" ofType:@"jpg"]]];
    MyPhoto *photo36 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"36" ofType:@"jpg"]]];
    MyPhoto *photo37 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"37" ofType:@"jpg"]]];
    MyPhoto *photo38 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"38" ofType:@"jpg"]]];
    MyPhoto *photo39 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"39" ofType:@"jpg"]]];
    MyPhoto *photo40 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"40" ofType:@"jpg"]]];
    MyPhoto *photo41 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"41" ofType:@"jpg"]]];  
    MyPhoto *photo42 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"42" ofType:@"jpg"]]];  
    MyPhoto *photo43 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"43" ofType:@"jpg"]]];  
    MyPhoto *photo44 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"44" ofType:@"jpg"]]];  
    MyPhoto *photo45 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"45" ofType:@"jpg"]]];  
    MyPhoto *photo46 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"46" ofType:@"jpg"]]];  
    MyPhoto *photo47 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"47" ofType:@"jpg"]]];  
    MyPhoto *photo48 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"48" ofType:@"jpg"]]];  
    MyPhoto *photo49 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"49" ofType:@"jpg"]]];  
    MyPhoto *photo50 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"50" ofType:@"jpg"]]];  
    MyPhoto *photo51 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"51" ofType:@"jpg"]]];  
    MyPhoto *photo52 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"52" ofType:@"jpg"]]];  
    MyPhoto *photo53 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"53" ofType:@"jpg"]]];  
    MyPhoto *photo54 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"54" ofType:@"jpg"]]];  
    MyPhoto *photo55 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"55" ofType:@"jpg"]]];  
    MyPhoto *photo56 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"56" ofType:@"jpg"]]];  
    MyPhoto *photo57 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"57" ofType:@"jpg"]]];  
    MyPhoto *photo58 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"58" ofType:@"jpg"]]];  
    MyPhoto *photo59 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"59" ofType:@"jpg"]]]; 
    MyPhoto *photo60 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"60" ofType:@"jpg"]]]; 
    MyPhoto *photo61 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"61" ofType:@"jpg"]]];  
    MyPhoto *photo62 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"62" ofType:@"jpg"]]];  
    MyPhoto *photo63 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"63" ofType:@"jpg"]]];  
    MyPhoto *photo64 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"64" ofType:@"jpg"]]];  
    MyPhoto *photo65 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"65" ofType:@"jpg"]]];  
    MyPhoto *photo66 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"66" ofType:@"jpg"]]];  
    MyPhoto *photo67 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"67" ofType:@"jpg"]]];  
    MyPhoto *photo68 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"68" ofType:@"jpg"]]];  
    MyPhoto *photo69 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"69" ofType:@"jpg"]]];  
    MyPhoto *photo70 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"70" ofType:@"jpg"]]]; 
    MyPhoto *photo71 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"71" ofType:@"jpg"]]];  
    MyPhoto *photo72 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"72" ofType:@"jpg"]]];  
    MyPhoto *photo73 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"73" ofType:@"jpg"]]];  
    MyPhoto *photo74 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"74" ofType:@"jpg"]]];  
    MyPhoto *photo75 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"75" ofType:@"jpg"]]]; 
    MyPhoto *photo76 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"76" ofType:@"jpg"]]]; 
    MyPhoto *photo77 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"77" ofType:@"jpg"]]];  
    MyPhoto *photo78 = [[MyPhoto alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"78" ofType:@"jpg"]]];  

    
  	if (indexPath.row == 0) {
        MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo, photo2, photo3, photo4, photo5, photo6, photo7, photo8,photo9,photo10,photo11,photo12,photo13,photo14,photo15,photo16,photo17,photo18,photo19,photo20,photo21,photo22,photo23,photo24,photo25,photo26,photo27,photo28,photo29,photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
        
        EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
        [self.navigationController pushViewController:photoController animated:YES];
        [photoController release];
		[source release];
		
	
	}if (indexPath.row == 1) {
         MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo8,photo9,photo10,photo11,photo12,photo13,photo14,photo15,photo16,photo17,photo18,photo19,photo20,photo21,photo22,photo23,photo24,photo25,photo26,photo27,photo28,photo29,photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 2) {
          MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo14,photo15,photo16,photo17,photo18,photo19,photo20,photo21,photo22,photo23,photo24,photo25,photo26,photo27,photo28,photo29,photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 3) {
          MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo18,photo19,photo20,photo21,photo22,photo23,photo24,photo25,photo26,photo27,photo28,photo29,photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 4) {
        MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo30,photo31,photo32,photo33,photo34,photo35,photo36,photo37,photo38,photo39,photo40,photo41,photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 5) {
          MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo42,photo43,photo44,photo45,photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 6) {
          MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo46,photo47,photo48,photo49,photo50,photo51,photo52,photo53,photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }if (indexPath.row == 7) {
        MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo54,photo55,photo56,photo57,photo58,photo59,photo60,photo61,photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];

		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
		[source release];
        
    }
    if (indexPath.row == 8) {
        MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo62,photo63,photo64,photo65,photo66,photo67,photo68,photo69,photo70,photo71,photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
        
		
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
    [source release];

        
    }

    if (indexPath.row == 9) {
        MyPhotoSource *source = [[MyPhotoSource alloc] initWithPhotos:[NSArray arrayWithObjects:photo72,photo73,photo74,photo75,photo76,photo77,photo78,nil]];
		EGOPhotoViewController *photoController = [[EGOPhotoViewController alloc] initWithPhotoSource:source];
		[self.navigationController pushViewController:photoController animated:YES];
		[photoController release];
        [source release];
                //d3bc42fb02bf58938053e6e4a085e61192776e53
    }
    [photo release];
    [photo2 release];
    [photo3 release];
    [photo4 release];
    [photo5 release];
    [photo6 release];
    [photo7 release];
    [photo8 release];
    [photo9 release];
    [photo10 release];
    [photo11 release];
    [photo12 release];
    [photo13 release];
    [photo14 release];
    [photo15 release];
    [photo16 release];
    [photo17 release];
    [photo18 release];
    [photo19 release];
    [photo20 release];
    [photo21 release];
    [photo22 release];
    [photo23 release];
    [photo24 release];
    [photo25 release];
    [photo26 release];
    [photo27 release];
    [photo28 release];
    [photo29 release];
    [photo30 release];
    [photo31 release];
    [photo32 release];
    [photo33 release];
    [photo34 release];
    [photo35 release];
    [photo36 release];
    [photo37 release];
    [photo38 release];
    [photo39 release];
    [photo40 release];
    [photo41 release];
    [photo42 release];
    [photo43 release];
    [photo44 release];
    [photo45 release];
    [photo46 release];
    [photo47 release];
    [photo48 release];
    [photo49 release];
    [photo50 release];
    [photo51 release];
    [photo52 release];
    [photo53 release];
    [photo54 release];
    [photo55 release];
    [photo56 release];
    [photo57 release];
    [photo58 release];
    [photo59 release];
    [photo60 release];
    [photo61 release];
    [photo62 release];
    [photo63 release];
    [photo64 release];
    [photo65 release];
    [photo66 release];
    [photo67 release];
    [photo68 release];
    [photo69 release];
    [photo70 release];
    [photo71 release];
    [photo72 release];
    [photo73 release];
    [photo74 release];
    [photo75 release];
    [photo76 release];
    [photo77 release];
    [photo78 release];
   

}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

