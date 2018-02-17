# bookApp
# Project Title

A books viewing website

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites


    Python v3.4 or above
    Django v2.0
    MySQL database engine


### Installing

1- Create a database and name it 'bookdb'

2- In the project folder run:

		python3 manage.py makemigrations library
		python3 manage.py migrate
		python3 manage.py runserver
3- Start the app in your browser via this url:

		http://localhost:8000/books/login/

4- To Start adding Authors, Books, and Genres: a) create a super-user (by running this command in the project folder):

		python3 manage.py createsuperuser

b) login to admin page:

		http://localhost:8000/admin/
		
		
## Authors

[Mina Nasr](https://github.com/MinaNasr)
[David Salib](https://github.com/davidsalib92)
[Ahmed Khamis](https://github.com/A92khamis)
[Ahmed Abdallah](https://github.com/AhmedAbd-Allah)


