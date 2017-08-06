Book Shop
by Khasanov Artem

The "BookStore" application is implemented according to the following specifications.
A tool that allows you to add, edit, and
Store the list of books using the Account
Authorization) and gives the possibility to download the electronic version of the book.

● For views, use only Haml and Sass.

● The user should be able to log in with gem 'Devise'

And his email should be shown in the header of the site. When you click on an email, you must have
A pop-up window will appear (the confirmation window for rails data) with the text "You
Really want to get out? "And when you click on the" OK "button, you should logout
From applications.

● Books that have been added by the user must be linked to it via a link
Belongs to and has_many.

● To load and store books and images, you must use gem
"Clip".

● You must use nested routes (example: users /: id / books). On
Images. To obtain such
Connect resource resources.

● For UI, you must use Bootstrap (gem "bootstrap"). It will be a plus if
The interface that will build will adequately look on mobile
Platform.

● For books it is necessary to pagination (gem "kaminari") - to display 6 books on one
page.

● Validation when adding books (name 4-40 letters, description 100-250 letters,
The presence of true - image and book). Output errors with the help of rails flash.

Application logic Books Shop:

For all users:

● The ability to register and sign in to your account

● Possibility to download a public book

For authors of books

● Ability to add a book to your account
