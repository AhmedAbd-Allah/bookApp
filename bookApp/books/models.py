from django.db import models
from django.db.models.fields.files import ImageField
from django.contrib.auth.models import User
from django.conf import settings
from django.db.models.signals import post_save

# Create your models here.
class Book(models.Model):
	book_id = models.AutoField(primary_key=True)
	book_name = models.CharField(max_length=200)
	author_id = models.ForeignKey('Author',on_delete=models.CASCADE)
	published_at = models.DateField()
	country = models.CharField(max_length=100)
	link = models.URLField(max_length=1000)
	summary = models.CharField(max_length=1000)
	image = models.ImageField( upload_to='books/images/books')
	user = models.ManyToManyField('auth.User',through='books.User_book')
	def __str__(self):
		return self.book_name
	
class Author(models.Model):
	author_id = models.AutoField(primary_key=True)
	author_name = models.CharField(max_length=200)
	Dob = models.DateField()
	Bio = models.TextField()
	image = models.ImageField( upload_to='books/images/authors')
	contact = models.EmailField(max_length=300)
	user = models.ManyToManyField('auth.User',through='books.User_author')

	def __str__(self):
		return self.author_name

class Category(models.Model):
	category_id = models.AutoField(primary_key=True)
	category_name = models.CharField(max_length=200)
	book = models.ManyToManyField('Book',through='books.Category_book')
	user = models.ManyToManyField('auth.User',through='books.Cat_user')
	def __str__(self):
		return self.category_name


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

class User_author(models.Model):
	user_id = models.ForeignKey('auth.User',on_delete=models.CASCADE)
	author_id = models.ForeignKey('Author',on_delete=models.CASCADE)

class Category_book(models.Model):
	category_id = models.ForeignKey('Category',on_delete=models.CASCADE)
	book_id = models.ForeignKey('Book',on_delete=models.CASCADE)	

class profile(models.Model):
	user = models.OneToOneField(settings.AUTH_USER_MODEL,on_delete=models.CASCADE,)
	image = models.ImageField( upload_to='books/images/users')	

	def __str__(self):
		return str(self.user.username)
	def __unicode__(self):
		return str(self.user.username)	

def post_save_user_model_receiver(sender,instance,created,*args,**kwargs):
	if created:
		try:
			profile.objects.create(user=instance)
		except:
			pass			
post_save.connect(post_save_user_model_receiver,sender=settings.AUTH_USER_MODEL)

