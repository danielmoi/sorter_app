User.destroy_all
u1 = User.create :email => 'me@me.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'you@me.com', :password => 'chicken', :password_confirmation => 'chicken'

Category.destroy_all
# categories for user 1
c1 = Category.create :name => 'ruby'
c2 = Category.create :name => 'css'

# categories for user 2
c3 = Category.create :name => 'ruby'
c4 = Category.create :name => 'css'

Bookmark.destroy_all
b1 = Bookmark.create :url => 'http://css-tricks.com', :title => 'CSS Tricks'
b2 = Bookmark.create :url => 'http://guides.rubyonrails.org/association_basics.html', :title => 'Rails Associations'
b3 = Bookmark.create :url => 'http://docs.ruby-lang.org/en/2.0.0/Array.html', :title => 'Ruby Array methods'
b4 = Bookmark.create :url => 'https://davidwalsh.name/css-vertical-center', :title => 'Vertical Centering'

# b1.categories << c2
# b2.categories << c1
# b3.categories << c1
# b4.categories << c2



# u1.bookmarks << b2 << b3
# u2.bookmarks << b1 << b4

# Need to add bookmarks indirectly?
u1.categories << c1 << c2

# categories are unique to each user (they choose their own)
# so these are for user 2
u2.categories << c3 << c4


# These are categories for user 1
c1.bookmarks << b3
c2.bookmarks << b4

# These are categories for user 2
c3.bookmarks << b2
c4.bookmarks << b1
