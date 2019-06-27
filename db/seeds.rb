# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 管理员
Administrator.create(login: 'admin', password: 'admin!', nickname: '系统管理员')

# DEMO账号
Administrator.create(login: ENV['DEMO_USER'], password: ENV['DEMO_PASSWORD'], nickname: '系统管理员') if ENV['DEMO_USER']


# 职务
UserPosition.create(name: '园长')
UserPosition.create(name: '幼儿教师')

# 单页
Page.create(title: 'XXX幼儿园招生简章', alias: 'admission-guide', content: '<span style="font-family:&quot;font-size:14px;background-color:#F8F8F8;"><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">一、幼儿园简介</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">XXXX幼儿园，创建于XXXX年, 是一所XXXX幼儿园。幼儿园座落于XXXX，紧邻XXXX。本园严格按照规范化幼儿园标准建设，分设学前班、大、中、小班四个教学班。室内儿童化的环境布置，配以先进的中、小型玩教具，使孩子们在富于童趣、安全、舒适的环境中渡过快乐的童年时光。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">一、丰富多彩的</span><a href="https://www.baidu.com/s?wd=%E8%AF%BE%E7%A8%8B%E8%AE%BE%E7%BD%AE&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">课程设置</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">：</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">1、 中英文两种语言完成幼儿教育任务，实现真正的</span><a href="https://www.baidu.com/s?wd=%E5%8F%8C%E8%AF%AD%E6%95%99%E5%AD%A6&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">双语教学</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">。让幼儿天天接触英语，大大提高幼儿英语的听、说、读、写能力。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">2、 为减轻家长负担，免去家长早、晚接送孩子之苦，我园特开办长托班，以培养孩子良好习惯和生活自理能力。白天为幼儿开设丰富的课程，晚上有专职老师陪护，使幼儿体会家的温馨。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">3、 为2---4岁幼儿开设快乐识字、</span><a href="https://www.baidu.com/s?wd=%E5%9B%BD%E5%AD%A6%E7%BB%8F%E5%85%B8&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">国学经典</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">、全脑开发、</span><a href="https://www.baidu.com/s?wd=%E8%92%99%E6%B0%8F%E6%95%B0%E5%AD%A6&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">蒙氏数学</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">、节拍英语、奥尔夫音乐、游戏、舞蹈、韵律操、绘画等课程，让幼儿在玩儿中学，学中玩儿。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">4、 为4---6岁幼儿开设逻辑数学、</span><a href="https://www.baidu.com/s?wd=%E5%AD%A6%E5%89%8D%E6%8B%BC%E9%9F%B3&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">学前拼音</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">、汉字启蒙、牛津英语、</span><a href="https://www.baidu.com/s?wd=%E5%9B%BD%E5%AD%A6%E7%BB%8F%E5%85%B8&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">国学经典</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">、自然科学、艺术手工、音乐、美术等课程，大大提高幼儿的</span><a href="https://www.baidu.com/s?wd=%E8%AE%A1%E7%AE%97%E8%83%BD%E5%8A%9B&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">计算能力</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">、阅读能力、书写能力。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">保障有力的硬件设施：</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">本园配备丰富多样的玩教具，并时时更新，教室备有钢琴、电子琴等乐器,并配备电脑等</span><a href="https://www.baidu.com/s?wd=%E5%A4%9A%E5%AA%92%E4%BD%93%E6%95%99%E5%AD%A6%E8%AE%BE%E5%A4%87&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao" target="_blank" class="baidu-highlight">多媒体教学设备</a><span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">。本园还配备专用园车，为小朋友提供更好的服务。聘请专业厨师，为小朋友烹调各种健康美味的菜肴。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">二、幼儿园招生对象：招收18个月----6岁年龄段幼儿。</span><br />
<span style="color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;">三、幼儿园收费标准：</span></span><span style="font-family:&quot;font-size:14px;background-color:#F8F8F8;"></span>')

# 资讯分类
ArticleCategory.create(name: '公告')
ArticleCategory.create(name: '我园资讯')
ArticleCategory.create(name: '课程介绍')
ArticleCategory.create(name: '教师风采')
ArticleCategory.create(name: '幼儿佳作')
ArticleCategory.create(name: '幼儿食谱')
