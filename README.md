# Sorter

Sorter is a web application for sorting and storing your bookmarks from the internet.

### Features
1. When creating a bookmark, Sorter will automatically search for the title and description from the URL
2. Custom categories for you to sort your bookmarks
3. Favourites – tag your favourite bookmarks
4. Reading list – browse the bookmarks that you haven't read
5. Explore – browse bookmarks and categories of other users
6. Stats – keep track of how many bookmarks you have – sorted by category

### Technical details
- Ruby version 2.3.0
- Rails 4.2.6
- Postgres 9.5.1

### Gems
- pg (for Postgresql)
- cloudinary (for file upload)
- rails_12factor (for production)

### Libraries / other resources
- ChartJS (for graphs)
- Fontawesome

### Usage
1. Clone repo from https://github.com/danielmoi/sorter_app
2. Run `bundle` to install Gems
3. Run `rake db:migrate` and `rake db:seed` to populate database
4. Run `rails server` and navigate to `localhost:3000`

Alternatively, visit https://sorter-4000.herokuapp.com and login to Sorter now!

### Support
- Raise an issue here: https://github.com/danielmoi/sorter_app/issues
- Submit a pull request
- Email me at daniel@ampersandmoi.com 
