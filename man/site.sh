#!/usr/bin/env bash


# 在搜索引擎中输入
site:twant.com


# 稍微高级点的Google粉丝一定都知道“site:”这个搜索运算符，它可以让你限制Google只搜索固定域里的内容，
# 比如搜索“site:guao.hk 作恶”即可得到所有谷奥网站里包含“作恶”二字的内容。实际上关于“site:”搜索运算符还有好多不为人知的小技巧，今天就跟大家分享一下。

# *号技巧：
# 搜索“maps.*.com”可得到所有以maps.xxx.com作为域的网站内容，不过可惜的是Google不会给你全部匹配的结果，只有一部分
# 你可以将*放到任何位置，比如“site:news.*”即可得到news.cnet.com或news.discovery.com这种结果
# 搜索“site:amazon.* glasses”即可找到全球亚马逊的眼镜商品

# 目录搜索技巧：
# 有些博客是会按照年份来建立目录的，所以搜索“site:博客域名/2012 gmail”即可得到全部2012年发的包含gmail的文章
# 甚至会支持目录后的参数，比如搜索“site:support.google.com/maps/bin/answer.py inurl:"hl=en" 3d”即可得到所有Google帮助论坛里讨论3D的内容，这里inurl运算符是为了限制内容为英文
# *结合目录来用：搜索“site:support.google.com/*/answer imap”即可得到Google帮助论坛里所有关于imap的回答

# 图片搜索技巧：
# 跟网页搜索一样也支持*和目录。比如搜索“site:flickr.com/photos/c_olegario beach”即可得到所有Flickr里海滩的图片
# 搜索“site:photos.* oscar red carpet”即可得到全部图片站里关于奥斯卡红地毯的照片。
