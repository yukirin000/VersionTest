//
//  Interface.h
//  JLXCSNS_iOS
//
//  Created by 李晓航 on 15/5/8.
//  Copyright (c) 2015年 JLXC. All rights reserved.
//

#ifndef JLXCSNS_iOS_Interface_h
#define JLXCSNS_iOS_Interface_h

//192.168.1.109
//#define kTestPath @"http://127.0.0.1/1.json"
#define kHomeAddr @"http://127.0.0.1/"//115.28.4.154
//http://localhost/www/DemoThink/
#define kTestPath [kHomeAddr stringByAppendingString:@"DemoThink/"]

//http://localhost/www/test/index.php/Home/Index/testImage
#define kDownLoadPath [kHomeAddr stringByAppendingString:@"test/index.php/Home/Index/testImage"]

#endif
