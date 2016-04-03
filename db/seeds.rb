user_1 = User.create!(:name => "Thais Correia", :email => "tnmcorreia@gmail.com", :password => "123456", :password_confirmation => '123456',  :is_active => 1)
user_2 = User.create!(:name => "Artur Araújo", :email => "arturaraujo.b@gmail.com", :password => "123456", :password_confirmation => '123456', :is_active => 1)

ListCategory.create(:id => 1, :title => "ToDo", :photo => "todo.png", :is_active => 1)
ListCategory.create(:id => 2, :title => "Financeiro", :photo => "financial.png", :is_active => 1)

List.create(:id => 5, :list_category_id => 1, :user => user_2, :title => "Teste", :description => "Descrição Teste", :is_active => 1)
List.create(:id => 6, :list_category_id => 1, :user => user_2, :title => "Teste 2", :description => "Descrição Teste 2", :is_active => 1)
List.create(:id => 1, :list_category_id => 1, :user => user_2, :title => "Fazer nas Férias", :description => "Atividades para fazer nas férias", :is_active => 1)
List.create(:id => 2, :list_category_id => 2, :user => user_1, :title => "Objetivos Financeiros", :description => "Objetivos para alcançar em um ano", :is_active => 1)
List.create(:id => 3, :list_category_id => 2, :user => user_1, :title => "Passos para se tornar rico", :is_active => 1)
List.create(:id => 4, :list_category_id => 1, :user => user_2, :title => "Estudar", :description => "Tecnologias para estudar", :is_active => 1)

ItemType.create(:id => 1, :title => "Texto", :is_active => 1)
ItemType.create(:id => 2, :title => "Editável", :is_active => 1)

Item.create(:list_id => 1, :order => 0, :item_type_id => 1, :text => "Ler 10 livros.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 1, :order => 1, :item_type_id => 2, :text => "Aprender a tocar uma nova música.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 1, :order => 2, :item_type_id => 1, :text => "Dormir.", :is_active => 1, :is_private => 0)

Item.create(:list_id => 2, :order => 0, :item_type_id => 1, :text => "Juntar 20k.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 2, :order => 1, :item_type_id => 1, :text => "Ajudar uma ONG.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 2, :order => 2, :item_type_id => 1, :text => "Investir na bolsa de valores.", :is_active => 1, :is_private => 0)

Item.create(:list_id => 3, :order => 0, :item_type_id => 1, :text => "Jogar na mega-sena.", :is_active => 1, :is_private => 1)
Item.create(:list_id => 3, :order => 1, :item_type_id => 1, :text => "Continuar jogando na mega-sena.", :is_active => 1, :is_private => 0)

Item.create(:list_id => 4, :order => 0, :item_type_id => 1, :text => "Ruby on Rails.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 4, :order => 1, :item_type_id => 1, :text => "Django.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 4, :order => 2, :item_type_id => 1, :text => "AngularJS.", :is_active => 1, :is_private => 0)
Item.create(:list_id => 4, :order => 3, :item_type_id => 1, :text => "Node.js.", :is_active => 1, :is_private => 0)

Item.create(:list_id => 5, :order => 0, :item_type_id => 1, :text => "Item da lista.", :is_active => 1, :is_private => 0)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')