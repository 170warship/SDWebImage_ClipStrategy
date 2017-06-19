# SDWebImage_ClipStrategy

中文：

SDWebImage支持圆角功能

iOS上使用UIImageView.layer.cornerRadius设置圆角的话，会影响性能。

苦于SDWebImage里面没有图片设置圆角的功能，所以我对SDWebImage进行了改造，使其支持直接输出圆角图片

使用例子：

UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 150)];

NSString* imgUrl = @"http://img1.gtimg.com/news/pics/hv1/9/44/2218/144236679.jpg";

[imgView sd_setImageWithURL:[NSURL URLWithString:imgUrl width:imgView.width height:imgView.height cornerRadius:5]];

