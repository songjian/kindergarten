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

# 招生简章
Page.create(title: '青岛西海岸新区第一幼儿园教育集团 2019 年一批招生简章', alias: 'admission-guide', content: '<p align="center" style="margin-left:31.7pt;text-indent:0cm;">
<span style="font-size:22.0pt;line-height:107%;">青岛西海岸新区第一幼儿园教育集团</span> 
</p>
<p align="center" style="margin-left:31.7pt;text-indent:0cm;">
<span style="font-size:22.0pt;line-height:107%;">2019</span><span style="font-size:22.0pt;line-height:107%;">年一批招生简章</span><span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
根据市、区<span>2019</span>年幼儿园招生工作的有关要求，结合本园实际，现对我园<span>2019</span>年一批招生工作相关事项通知如下：<span></span> 
</p>
<p style="margin-left:31.8pt;">
一、招生对象<span></span> 
</p>
<p style="margin-left:32.55pt;">
具有接受普通教育能力的小班幼儿（小班：<span>2015</span>年<span>9</span>月<span>1</span>日<span>——2016</span>年<span>8</span>月<span>31</span>日期间出生）
</p>
<p style="margin-left:32.55pt;">
二、招生计划<span></span> 
</p>
<p style="margin-left:32.55pt;">
香江路园 （类别：省十佳；保教费<span>667</span>元<span>/</span>月）：小班<span></span> <span>60</span>名；<span></span> 
</p>
<p style="margin-left:32.55pt;">
怡和嘉园园（类别：省十佳；保教费<span>667</span>元<span>/</span>月）：小班<span></span> <span>60</span>名；<span></span> 
</p>
<p style="margin-left:32.55pt;">
盛世江山园（类别：省十佳；保教费<span>667</span>元<span>/</span>月）：小班<span></span> <span>60</span>名；<span></span> 
</p>
<p style="margin-left:32.55pt;">
石雀滩园 （类<u>别</u>：省十佳；保教费<span>667</span>元<span>/</span>月）：小班<span></span> <span>90</span>名；<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
注：长<u>白</u>山路园（长白山路<span>95</span>号）、实验园（珠江路<span>198 </span>号）招生计划及方式将在二批招生简章公布。<span></span> 
</p>
<p style="margin-left:32.55pt;">
三、招生范围香江路园：<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
一类：青岛西海岸新区东小区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应东小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。二类：青岛西海岸新区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应东小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。怡和嘉园园：<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
一类：青岛西海岸新区怡和嘉园小区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母<u>或</u>者祖父母、外祖父母为户主）且持有相应怡和嘉园小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
二类：青岛西海岸新区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应怡和嘉园小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:32.55pt;">
盛世江山园：<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
一类：青岛西海岸新区盛世江山小区内常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应盛世江山小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
二类：青岛西海岸新区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应盛世江山小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:28.6pt;">
石雀滩园：<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
一类：青岛西海岸新区石雀滩片区内常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应石雀滩片区内小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交<u>易</u>大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
二类：青岛西海岸新区常住户籍（户籍必须与父母或者祖父母、外祖父母在一起，且其父母或者祖父母、外祖父母为户主）且持有相应石雀滩片区内小区房屋产权证（商业用房除外）的适龄幼儿。（提供祖父母或外祖父母房产证明的，需祖孙三代同户籍且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明）。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
注：石雀滩片区界定为<span>——</span>罗浮山路以东，天目山路以西，漓江路以南，银<s>沙</s>滩路以北区域。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>四、</span></span>招生办法<span></span> 
</p>
<p style="text-indent:31.45pt;">
本着<span>“</span>公开、公正、透明<span>”</span>的原则，采取现场报名、按类别<u>依</u>次录取的方式招生，经资格审查合格后，一类报名人数等于招生计划时，直接确定录取名单；一类报名人数低于招生计划时，二类进行补录；报名人数超过招生计划时，幼儿园将于报名次日上午<span>9:00</span>现场组织抽签，确定录取幼儿名单。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
抽签确定入园幼儿时，将由区相关部门工作人员、家长代表等组成的监督团全程监督。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:31.3pt;">
招生结束，如有空额，将面向社会进行二批招生，二批招生简章将于<span> 2019 </span>年<span> 6 </span>月<span> 19 </span>日<span> 15:00 </span>在幼儿园网站（<span>www.dyyey.cn</span>）、微信公众号公布，具体招生时间、方式以第二批招生简章为准。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>五、</span></span>报名时间<span></span> 
</p>
<p style="margin-left:32.55pt;">
<span>2019</span>年<span>6</span>月<span>18</span>日<span>8:30—14:00</span>，逾期不再受理。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>六、</span></span>报名地点<span></span> 
</p>
<p style="margin-left:32.55pt;">
香江路园： 青岛西海岸新区香江路<span>6</span>号；<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:29.65pt;">
怡和嘉园园：青岛西海岸新区东江路<span>157</span>号怡和嘉园北区内；<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
盛世江山园：青岛西海岸新区富春江路<span>1076</span>号盛世江山南区内；石雀滩园： 青岛西海岸新区漳江路<span>100</span>号。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>七、</span></span>报名要求及所需材料<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:33.6pt;">
<span>1.</span>报名时<span>,</span>请家长（限<span>1</span>名家长，不需带领幼儿）携带以下材料的原件和复印件，到幼儿园现场报名。<span></span> 
</p>
<p style="margin-left:24.0pt;text-indent:24.0pt;">
<span style="line-height:111%;"><span>（1）<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>家长本人身份证；<span></span> 
</p>
<p style="margin-left:24.0pt;text-indent:24.0pt;">
<span style="line-height:111%;"><span>（2）<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>幼儿随父母同户、同住的户口簿全页（包括主页、索引页、户主单页、幼儿单页）；<span></span> 
</p>
<p style="margin-left:24.0pt;text-indent:24.0pt;">
<span style="line-height:111%;"><span>（3）<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>与户籍情况<s>一</s>致的住房产权人的房产证；<span></span> 
</p>
<p style="margin-left:24.0pt;text-indent:24.0pt;">
<span style="line-height:111%;"><span>（4）<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>提供祖父母或外祖父母房产证明的，需提供祖孙三代同户籍（户口簿全页：包括主页、索引页、户主单页、幼儿单<u>页</u>）；且需提供房产交易大厅出具的幼儿及其父母在我区内无房证明。<span></span> 
</p>
<p style="margin-left:24.0pt;text-indent:24.0pt;">
<span style="line-height:111%;"><span>（5）<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>幼儿出生医学证明；<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
以上证件均需用<span>A4</span>纸复印全部页面，编号、印章等重要内容务必复印清晰，证件缺失者不予办理。提供材料经工作人员审核无误后，原件由家长带回，所有复印件及报名表留存复审汇总，概不退回。<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
<span>2.</span>如有做假行为，取消该幼儿入园资格及后续报名资格。报名先后顺序不作为录取依据，家长无需过早排队。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>八、</span></span>办理录取手续<span></span> 
</p>
<p style="margin-left:-.75pt;text-indent:32.05pt;">
审核结束，幼儿园将确定预录取幼儿名单，电话通知幼儿办理正式录取手续。办理正式录取手续前，家长应带幼儿到区妇幼卫生保健机构按规定项目进行体检。体检合格者，带领幼儿，并携带《儿童健康手册》、儿童健康档案和《儿童预防接种证》等有效证件到幼儿园办理录取手续，逾期不办理者，将取消该幼儿录取资格。<span></span> 
</p>
<p style="margin-left:64.2pt;text-indent:-32.15pt;">
<span style="line-height:111%;"><span>九、</span></span>其它<span><span> </span></span><span><img width="3" height="6" src="file://C:/Users/songj/AppData/Local/Temp/msohtmlclip1/01/clip_image003.gif" /></span><span></span> 
</p>
<p style="margin-left:28.2pt;">
幼儿园具体收费标准以物价部门核定的收费标准为准。<span></span> 
</p>
<p style="margin-left:0cm;text-indent:0cm;">
<span style="font-size:11.0pt;line-height:110%;font-family:&quot;;"><span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:14.66px;font-style:normal;font-weight:400;text-decoration:none;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span> </span></span>联系电话：<span>86898702<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>联系人：孔老师
</p>
<p style="margin-left:0cm;text-indent:0cm;">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 青岛西海岸新区第一幼儿园教育集团
</p>
<p style="margin-left:0cm;text-indent:0cm;">
<span><span style="background-color:#FFFFFF;color:#000000;font-family:&quot;font-size:12px;font-style:normal;font-weight:400;text-decoration:none;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2019</span>年<span>5</span>月<span>17</span>日<span></span> 
</p>
<br />')

# 资讯分类
ArticleCategory.create(name: '公告')
ac2 = ArticleCategory.create(name: '我园资讯')
ArticleCategory.create(name: '课程介绍')
ArticleCategory.create(name: '教师风采')
ArticleCategory.create(name: '幼儿佳作')
ArticleCategory.create(name: '幼儿食谱')

# DEMO
Article.create(article_category: ac2, author: '园长', title: '青岛西海岸新区第一幼儿园小班新生入园专题家长会', content: '为增强幼儿园与家庭的教育合力，缓解新生入园焦虑情绪，指导家长协助幼儿尽快适应幼儿园生活，2018年8月24日，黄岛区第一幼儿园邀请了青岛心睿心理研究所所长、家庭教育专家、国家级执业心理咨询师高睿老师面向幼儿园小班全体家长开展了《新生入园与成长教育》的家长学校专题讲座。<br />
讲座中，高睿老师理论与案例相结合，从幼儿生理问题、识别幼儿的常见问题、关系问题、成长教育四个方面，站在心理学的角度帮助家长分析了幼儿产生焦虑的表现、原因及正确的疏导方法，帮助家长准确识别幼儿发展中存在的问题并及时矫正，并站在幼儿成长的角度正视幼儿与伙伴之间、与教师之间的关系，促进幼儿的社会性发展。<br />
希望本次的讲座活动能够为家长朋友们带来启示和帮助，了解自己陪伴孩子们一起成长的重要性，了解自己的语言和行为带给孩子们的影响，了解正确的教育方式带给孩子们成长的改变，了建立学习型家庭对促进幼儿发展起到的重要作用。让我们行动起来吧，共同为孩子们打造一个积极、健康的成长环境。')
Article.create(article_category: ac2, author: '园长', title: '《第一幼儿园名家讲堂》', content: '幼儿园《名家讲堂》有幸邀请到了四川师范大学教授，中国学前教育研究会常务理事、学术委员会委员，中国学前教育研究会家庭与社区教育专委会副主任，四川省学前教育研究会常务理事，中国学前教育研究会游戏与玩具专委会委员鄢超云教授和读懂儿童教育研究所郝振博老师亲临我园授课。同时我园邀请了名园工作站和片区一体化的老师前来观课。')
