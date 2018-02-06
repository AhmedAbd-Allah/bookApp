from django.urls import path,re_path
from . import views
urlpatterns = [
    path('', views.index),
    path('registeration/',views.registerView,name='register')
    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]