from django.contrib import admin

# Register your models here.
from .models import Auther
admin.site.register(Auther)
from .models import Book
admin.site.register(Book)
from .models import Category
admin.site.register(Category)
from .models import User_book
admin.site.register(User_book)
from .models import Cat_user
admin.site.register(Cat_user)
from .models import Category_book
admin.site.register(Category_book)
from .models import User_auther
admin.site.register(User_auther)
