from django.db import models
from django.db.models.fields.files import ImageField
from django.contrib.auth.models import User

# Create your models here.
class Book(models.Model):
	book_id = models.AutoField(primary_key=True)
	book_name = models.CharField(max_length=200)
	author_id = models.ForeignKey('Auther',on_delete=models.CASCADE)
	published_at = models.DateField()
	country = models.CharField(max_length=100)
	link = models.URLField(max_length=1000)
	summary = models.CharField(max_length=1000)
	image = models.ImageField( upload_to='books/images')
	user = models.ManyToManyField('auth.User',through='User_book')
	def __str__(self):
		return self.book_name
	
class Auther(models.Model):
	auther_id = models.AutoField(primary_key=True)
	auther_name = models.CharField(max_length=200)
	Dob = models.DateField()
	Bio = models.TextField()
	image = models.ImageField( upload_to='books/images')
	contact = models.EmailField(max_length=300)
	user = models.ManyToManyField('auth.User',through='User_auther')
	def __str__(self):
		return self.auther_name

class Category(models.Model):
	category_id = models.AutoField(primary_key=True)
	category_name = models.CharField(max_length=200)
	book = models.ManyToManyField('Book',through='Category_book')
	user = models.ManyToManyField('auth.User',through='Cat_user')
	def __str__(self):
		return self.Category_name


class User_book(models.Model):
	user_id = models.ForeignKey('auth.User',on_delete=models.CASCADE)
	book_id = models.ForeignKey('Book',on_delete=models.CASCADE)
	choose1=(('w','wishlist'),('r','read'),('n','no_choice'))
	status = models.CharField(max_length=100,choices=choose1,default='n')
	choose2=(('1','one'),('2','two'),('3','three'),('4','four'),('5','five'))
	rate = models.CharField(max_length=100,choices=choose2,default='3')

class Cat_user(models.Model):
	user_id = models.ForeignKey('auth.User',on_delete=models.CASCADE)
	category_id = models.ForeignKey('Category',on_delete=models.CASCADE)

class User_auther(models.Model):
	user_id = models.ForeignKey('auth.User',on_delete=models.CASCADE)
	auther_id = models.ForeignKey('Auther',on_delete=models.CASCADE)

class Category_book(models.Model):
	category_id = models.ForeignKey('Category',on_delete=models.CASCADE)
	book_id = models.ForeignKey('Book',on_delete=models.CASCADE)	


