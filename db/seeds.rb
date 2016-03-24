User.destroy_all
u1 = User.create :email => 'me@me.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'you@me.com', :password => 'chicken', :password_confirmation => 'chicken'

Category.destroy_all
c1 = Category.create :name => 'ruby'
c2 = Category.create :name => 'css'

Bookmark.destroy_all
b1 = Bookmark.create :url => 'http://css-tricks.com', :title => 'CSS Tricks'
b2 = Bookmark.create :url => 'http://guides.rubyonrails.org/association_basics.html', :title => 'Rails Associations'
b3 = Bookmark.create :url => 'http://docs.ruby-lang.org/en/2.0.0/Array.html', :title => 'Ruby Array methods'
b4 = Bookmark.create :url => 'https://davidwalsh.name/css-vertical-center', :title => 'Vertical Centering'

b1.categories << c2
b2.categories << c1
b3.categories << c1
b4.categories << c2

u1.bookmarks << b2 << b3
u2.bookmarks << b1 << b4
