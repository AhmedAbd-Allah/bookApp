from django.urls import path,re_path
from . import views
urlpatterns = [
    # path('', views.index),

    path('registeration/',views.registerView,name='register'),
    re_path('^userinfo/(?P<user_id>[0-9]+)$', views.userinfo)
    path('', views.index),
    path('registeration/',views.registerView,name='register'),
    path('login/', views.loginView,name='login'),
    path('logout/',views.logoutView,name='logout'),
    re_path('^authors/(?P<author_id>[0-9]+)$',views.authorView,name='author'),
    path('authors/',views.allAuthorView,name='authors'),


    # re_path('^(?P<book_id>[0-9]+)$',views.details),
    # path('',views.bookList)

]