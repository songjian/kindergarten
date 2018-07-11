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
