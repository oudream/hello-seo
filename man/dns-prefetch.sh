#!/usr/bin/env bash

# DNS Prefetch有效缩短了DNS的解析时间。

# DNS(Domain Name System, 域名系统)，作为域名和IP地址相互映射的一个分布式数据库。
# 当浏览器访问一个域名的时候，需要解析一次DNS，获得对应域名的ip地址。在解析过程中，
#   按照浏览器缓存、系统缓存、路由器缓存、ISP(运营商)DNS缓存、根域名服务器、顶级域名服务器、主域名服务器的顺序，逐步读取缓存，直到拿到IP地址。

# https://www.geekjc.com/post/5d762123c15afd63c91f4862
# 解决的问题及收益
# DNS Prefetch有效缩短了DNS的解析时间。
# 如果浏览器最近将一个域名解析为IP地址，所属的操作系统将会缓存，下一次DNS解析时间可以低至0-1ms。 如果结果不在系统本地缓存，则需要读取路由器的缓存，则解析时间的最小值大约为15ms。如果路由器缓存也不存在，则需要读取ISP（运营商）DNS缓存，一般像taobao.com、baidu.com这些常见的域名，读取ISP（运营商）DNS缓存需要的时间在80-120ms，如果是不常见的域名，平均需要200-300ms。一般的网站在运营商这里都能查询的到，所以普遍来说DNS Prefetch可以给一个域名的DNS解析过程带来15-300ms的提升，尤其是一些大量引用很多其他域名资源的网站，提升效果就更加明显了。
# Chromium对底层缓存进行了建模，当Chrome浏览器启动的时候，就会自动的快速解析浏览器最近一次启动时记录的前10个域名。所以你经常访问的网址就没有DNS解析的延迟，打开速度更快。
#
# 如何不漏掉域名
# 借助开发者工具，查看所有静态资源域名，并添加link标签，手动解析
# 如果是HTTPS网页，考虑是否需要对超链接自动解析，如果需要，添加对应的meta标签
# 检查js中发起的跳转至其他域名的情况，对于这些域名，添加link标签，手动解析
# 检查是否存在重定向的域名，对于重定向的域名，将重定向之后的域名，添加link标签，手动解析




#    <link rel="dns-prefetch" href="//g.alicdn.com">
#    <link rel="dns-prefetch" href="//gtd.alicdn.com">
#    <link rel="dns-prefetch" href="//assets.alicdn.com">
#    <link rel="dns-prefetch" href="//gju1.alicdn.com">
#    <link rel="dns-prefetch" href="//gju2.alicdn.com">
#    <link rel="dns-prefetch" href="//gju3.alicdn.com">
#    <link rel="dns-prefetch" href="//gju4.alicdn.com">
#    <link rel="dns-prefetch" href="//gtms01.alicdn.com">
#    <link rel="dns-prefetch" href="//gtms02.alicdn.com">
#    <link rel="dns-prefetch" href="//gtms03.alicdn.com">
#    <link rel="dns-prefetch" href="//gtms04.alicdn.com">
#    <link rel="dns-prefetch" href="//log.mmstat.com">
#    <link rel="dns-prefetch" href="//ju.taobao.com">
#    <link rel="dns-prefetch" href="//skip.ju.taobao.com">
#    <link rel="dns-prefetch" href="//detail.ju.taobao.com">
#    <link rel="dns-prefetch" href="//dskip.ju.taobao.com">
#    <link rel="dns-prefetch" href="//trade.ju.taobao.com">
