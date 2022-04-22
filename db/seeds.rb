Order.destroy_all
OrderDetail.destroy_all
Menu.destroy_all
CategoryMenu.destroy_all
Category.destroy_all

# Orders
cust_01 = Order.create(customer_name: 'Jajang', customer_email: 'jajang@gmail.com', status: 'PAID', order_date: '2022-04-03')
cust_02 = Order.create(customer_name: 'Maman', customer_email: 'maman@gmail.com', status: 'PAID', order_date: '2022-04-04')
cust_03 = Order.create(customer_name: 'Udin', customer_email: 'udin@gmail.com', status: 'PAID', order_date: '2022-04-05')
cust_04 = Order.create(customer_name: 'Eko', customer_email: 'eko@gmail.com', status: 'PAID', order_date: '2022-04-06')
cust_05 = Order.create(customer_name: 'Putri', customer_email: 'putri@gmail.com', status: 'PAID', order_date: '2022-04-07')

# Menus
menu_01 = Menu.create(name: 'Nasi Uduk', price: 12000, description: 'Nasi Uduk Ibu Angga')
menu_02 = Menu.create(name: 'Nasi Kuning', price: 14000, description: 'Nasi Kuning Ibu Aldi')
menu_03 = Menu.create(name: 'Ayam Goreng', price: 16000, description: 'Ayam Goreng Ibu Amin')
menu_04 = Menu.create(name: 'Ayam Bakar', price: 18000, description: 'Ayam Bakar Ibu Aang')
menu_05 = Menu.create(name: 'Rendang', price: 20000, description: 'Nasi Rendang Ibu Ajeng')

# Category
category_01 = Category.create(name: 'nasi')
category_02 = Category.create(name: 'ayam')
category_03 = Category.create(name: 'daging')

# Category_Menu
CategoryMenu.create(menu: menu_01, category: category_01)
CategoryMenu.create(menu: menu_02, category: category_01)
CategoryMenu.create(menu: menu_03, category: category_02)
CategoryMenu.create(menu: menu_04, category: category_02)
CategoryMenu.create(menu: menu_05, category: category_03)

# Order_details
OrderDetail.create(order: cust_01, menu: menu_01, price: menu_01.price.to_i * 5, quantity: 5)
OrderDetail.create(order: cust_01, menu: menu_02, price: menu_02.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_01, menu: menu_04, price: menu_04.price.to_i * 1, quantity: 1)
OrderDetail.create(order: cust_01, menu: menu_05, price: menu_05.price.to_i * 3, quantity: 3)
OrderDetail.create(order: cust_02, menu: menu_01, price: menu_01.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_02, menu: menu_02, price: menu_02.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_02, menu: menu_05, price: menu_05.price.to_i * 5, quantity: 5)
OrderDetail.create(order: cust_03, menu: menu_01, price: menu_01.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_03, menu: menu_02, price: menu_02.price.to_i * 3, quantity: 3)
OrderDetail.create(order: cust_03, menu: menu_03, price: menu_03.price.to_i * 4, quantity: 4)
OrderDetail.create(order: cust_03, menu: menu_04, price: menu_04.price.to_i * 5, quantity: 5)
OrderDetail.create(order: cust_03, menu: menu_05, price: menu_05.price.to_i * 6, quantity: 6)
OrderDetail.create(order: cust_04, menu: menu_01, price: menu_01.price.to_i * 1, quantity: 1)
OrderDetail.create(order: cust_04, menu: menu_02, price: menu_02.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_04, menu: menu_05, price: menu_05.price.to_i * 6, quantity: 6)
OrderDetail.create(order: cust_05, menu: menu_01, price: menu_01.price.to_i * 4, quantity: 4)
OrderDetail.create(order: cust_05, menu: menu_02, price: menu_02.price.to_i * 2, quantity: 2)
OrderDetail.create(order: cust_05, menu: menu_03, price: menu_03.price.to_i * 4, quantity: 4)
OrderDetail.create(order: cust_05, menu: menu_05, price: menu_05.price.to_i * 9, quantity: 9)

