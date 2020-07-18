#!/usr/bin/env bash

# async-data
# https://www.nuxtjs.cn/guide/async-data#%E9%94%99%E8%AF%AF%E5%A4%84%E7%90%86

# asyncData方法会在组件（限于页面组件）每次加载之前被调用。它可以在服务端或路由更新之前被调用。 在这个方法被调用的时候，
# 第一个参数被设定为当前页面的上下文对象，你可以利用 asyncData方法来获取数据，Nuxt.js 会将 asyncData 返回的数据融合组件 data 方法返回的数据一并返回给当前组件。
#
# 注意：由于asyncData方法是在组件 初始化 前被调用的，所以在方法内是没有办法通过 this 来引用组件的实例对象。
#
# Nuxt.js 提供了几种不同的方法来使用 asyncData 方法，你可以选择自己熟悉的一种来用：
#
# 返回一个 Promise, nuxt.js会等待该Promise被解析之后才会设置组件的数据，从而渲染组件.
# 使用 async 或 await (了解更多)
