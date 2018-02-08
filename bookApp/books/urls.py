from django.urls import path,re_path
from . import views
urlpatterns = [
<<<<<<< HEAD
    # path('', views.index),

    path('registeration/',views.registerView,name='register'),

    re_path('^userinfo/(?P<user_id>[0-9]+)$', views.userinfo)
=======
    path('', views.index),
    path('registeration/',views.registerView,name='register'),
    path('login/', views.loginView,name='login'),
    path('logout/',views.logoutView,name='logout'),
    path('author/',views.authorView,name='author'),
>>>>>>> fb7312e5d0ec9841ed683d23670e6bf8bc670d61

    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]