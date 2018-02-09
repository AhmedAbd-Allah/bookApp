from django.urls import path,re_path
from . import views
from django.contrib.auth.decorators import login_required
urlpatterns = [
    path('',views.index,name='index'),
    re_path('home/(?P<user_id>[0-9]+)$',login_required(views.homepage),name='home'),
    path('registeration/',views.registerView,name='register'),
    re_path('uploadimage/(?P<user_id>[0-9]+)$',views.uploadimage,name='upload'),
    re_path('upload/(?P<user_id>[0-9]+)$',views.upload,name='upload'),
    path('login/', views.loginView,name='login'),
    path('logout/',views.logoutView,name='logout'),
    re_path('^authors/(?P<author_id>[0-9]+)$',login_required(views.authorView),name='author'),
    path('authors/',login_required(views.allAuthorView),name='authors'),
    path('search/',views.search,name='search'),
    re_path('^userinfo/(?P<user_id>[0-9]+)$',views.userinfo,name='userinfo'),
    re_path('^category/(?P<cat_id>[0-9]+)$',views.categoryView,name='category'),

    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]