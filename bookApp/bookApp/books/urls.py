from django.urls import path,re_path
from . import views
from django.contrib.auth.decorators import login_required
urlpatterns = [
    path('',views.index,name='index'),
    # re_path('home/(?P<user_id>[0-9]+)$',login_required(views.homepage),name='home'),
    re_path('myhome/(?P<u_id>[0-9]+)$',login_required(views.myhome),name='myhome'),
    path('registeration/',views.registerView,name='register'),
    re_path('uploadimage/(?P<user_id>[0-9]+)$',login_required(views.uploadimage),name='upload'),
    re_path('upload/(?P<user_id>[0-9]+)$',login_required(views.upload),name='upload'),
    path('login/', views.loginView,name='login'),
    path('logout/',login_required(views.logoutView),name='logout'),
    re_path('^authors/(?P<author_id>[0-9]+)$',login_required(views.authorView),name='author'),
    path('authors/',login_required(views.allAuthorView),name='authors'),
    path('search/',views.search,name='search'),
    re_path('^userinfo/(?P<user_id>[0-9]+)$',login_required(views.userinfo),name='userinfo'),
    re_path('^category/(?P<cat_id>[0-9]+)$',views.categoryView,name='category'),
    re_path('editUserInfoForm/(?P<user_id>[0-9]+)$', login_required(views.editUserInfoView),name='editUserInfo'),
    re_path('^books/addfavorurite/(?P<favcatid>[0-9]+)$',views.addToFavourite,name='addToFavourite'),
    re_path('^books/(?P<bookId>[0-9]+)$',views.showBook,name='book'),
    re_path('^books/readstatus/(?P<bookId>[0-9]+)$',login_required(views.changeread),name='read'),
    re_path('^books/unreadstatus/(?P<bookId>[0-9]+)$',views.changeunread,name='unread'),
    re_path('^books/wishstatus/(?P<bookId>[0-9]+)$',views.changewish,name='wish'),
    re_path('^books/unwishstatus/(?P<bookId>[0-9]+)$',views.changeunwish,name='unwish'),
    re_path('^books/rate/(?P<bookId>[0-9]+)/(?P<myrate>[0-9]+)$',views.setRate,name='rate'),

    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]