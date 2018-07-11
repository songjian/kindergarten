# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(login: 'admin', password: 'admin!', nickname: '系统管理员')

# 职务
UserPosition.create(name: '园长')
UserPosition.create(name: '幼儿教师')

# 食物分类
FoodCategory.create(name: '面食')
FoodCategory.create(name: '饭类')
FoodCategory.create(name: '点心')
FoodCategory.create(name: '水果')
FoodCategory.create(name: '营养早餐')

# 食物
Food.create(name: '蔬菜鸡蛋面', food_category_id: 1, description: '使用新鲜蔬菜加上劲道面条制作。')
Food.create(name: '卤鸡蛋', food_category_id: 1, description: '使用新鲜卤蛋加上劲道面条制作。')
Food.create(name: '花生夹心小馒头', food_category_id: 1, description: '使用安心面粉加工而成。')
Food.create(name: '胡萝卜鸡蛋羹', food_category_id: 5, description: '使用新鲜胡萝卜加上鸡蛋制成。')
Food.create(name: '百合南瓜粥', food_category_id: 5, description: '使用南瓜和大米制作。')
Food.create(name: '三明治', food_category_id: 5, description: '使用现切面包和火腿制作而成。')
Food.create(name: '小米绿豆粥', food_category_id: 5, description: '使用小米熬制而成。')
Food.create(name: '热狗卷', food_category_id: 5, description: '美味的热狗卷，小朋友的最爱。')
Food.create(name: '五香鹌鹑蛋', food_category_id: 5, description: '使用鹌鹑蛋卤制而成。')
Food.create(name: '芝麻核桃强身粥', food_category_id: 5, description: '使用芝麻和核桃粉熬制而成。')
Food.create(name: '上海云吞', food_category_id: 5, description: '厨师精心制作的上海云吞。')
Food.create(name: '五彩木须蛋', food_category_id: 5, description: '使用木耳、鸡蛋、新鲜胡萝卜与蔬菜一起炒制，营养美味。')
