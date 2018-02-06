from django.urls import path,re_path
from . import views
urlpatterns = [
    path('', views.index),
    path('registeration/',views.registerView,name='register'),
    path('login/', views.loginView,name='login'),
    path('logout/',views.logoutView,name='logout'),
    path('author/',views.authorView,name='author'),

    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]