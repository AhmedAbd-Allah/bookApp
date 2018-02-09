from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.contrib.auth import login,get_user_model
from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from .models import Book,Author,Category,Category_book,profile
from django.contrib.auth import authenticate,login,logout
from django.views import generic
from django.views.generic import View
from django import forms
from .forms import RegisterUser,user_login,uploadImageForm
from django.db.models import Q
from django.contrib.auth.decorators import login_required
# from .forms import RegisterationForm

# from django.core.context_processors import csrf

# Create your views here.

User=get_user_model()

def index(request):\
	# if request.user.is_authenticated():
	# 	pass
	# else:	
		books=Book.objects.all()[:5]
		authors=Author.objects.all()[:5]
		return render(request,'books/index.html',{'books':books,'authors':authors,'title':'home page'})
def homepage(request,user_id):
	# if request.user.is_authenticated():
	# 	if request.user.id==user_id:

	return render (request,"books/home.html",{"userId":user_id,'title':'home page'})
	
	


#registeration form view 
def registerView(request,*args,**kwargs):

	if request.method=="GET":
		form = RegisterUser()
		return render(request,'books/regForm.html',{'form':form})
	elif request.method=='POST':
		form = RegisterUser(request.POST)
		if form.is_valid():
			user = form.save(commit=False)
			username = form.cleaned_data['username']
			email = form.cleaned_data['email']
			first_name = form.cleaned_data['first_name']
			last_name = form.cleaned_data['last_name']
			password = form.cleaned_data['password']
			user.set_password(password)	
			user.save()
			return HttpResponseRedirect("/books/login")
		else:
			return render(request,'books/regForm.html',{'form':form})	

#login form view
def loginView(request,*args,**kwargs):
	if request.method=='GET':
		form=user_login()
		return render(request,"books/login.html",{'form':form})
	elif request.method=='POST':
		form=user_login(request.POST)
		if form.is_valid():
			username=form.cleaned_data.get('username')
			user_obj=User.objects.get(username=username)
			login(request,user_obj)
			# return HttpResponseRedirect("/books/home/request.user.id")
			return render(request,"books/home.html",{'user_id':request.user.id})	
		return render(request,"books/login.html",{'form':form})	

#logout view
def logoutView(request,*args,**kwargs):
	logout(request)
	return HttpResponseRedirect("/books/login/")

#author page view
def authorView(request,author_id,*args,**kwargs):
	author=Author.objects.get(author_id=author_id)
	books=Book.objects.filter(author_id=author_id)
	# author1=Author.objects.get(author_id=1)
	return render(request,'books/author.html',{'author': author,'title':'Author page','books':books})	

#all authors page view
def allAuthorView(request,*args,**kwargs):
	authors=Author.objects.all()
	return render(request,'books/all_authors.html',{'authors':authors,'title':'All authors'})	

def userinfo(request,user_id):
	user = User.objects.get(id = user_id)
	return render(request, 'books/userinfo.html', {"user": user,'title':'userInfo'}) 	

def search(request,*args,**kwargs):
	if request.method=='GET':
		query=request.GET['search_text']
	else:
		query=''	
	authors=Author.objects.filter(Q(author_name__icontains=query))
	books=Book.objects.filter(Q(book_name__icontains=query))
	context={'authors':authors,'books':books,'title':'searchResult'}
	return render(request,'books/search.html',context)

def categoryView(request,cat_id):
	category=Category.objects.get(category_id=cat_id)
	# catObject=Category_book.objects.filter(category_id=cat_id).values()
	# for objectt in catObject:
	# 	books.append(Book.objects.filter(book_id=objectt.book_id))
	books=Book.objects.all()
	return render(request,'books/Category.html',{"category":category,"books":books,'title':'categories'})	
	


def uploadimage(request,user_id):
	form=uploadImageForm()

	return render(request,'books/uploadimage.html',{'user_id':user_id,'form':form})


def upload(request,user_id):
	# profile=profile.objects.get(user_id=user_id)
	if request.method=="POST":
		form=uploadImageForm(request.POST,request.FILES)
		if form.is_valid():
			Object=profile.objects.get(user_id=request.user.id)
			Object.image=form.cleaned_data['image']
			Object.save()
	# return HttpResponseRedirect("/books/userinfo")		
	return render(request,'books/userinfo.html',{'Object':Object})



	# def get(self,request):
	# 	form = self.form_class()
	# 	render(request,self.template,{'form':form})

	# def post(self,request):
	# 	form = self.form_class(request.POST)
	# 	if form.is_valid():
	# 		user = form.save(commit=False)
	# 		username = form.cleaned_data['username']
	# 		email = form.cleaned_data['email']
	# 		first_name = form.cleaned_data['first_name']
	# 		last_name = form.cleaned_data['last_name']
	# 		password = form.cleaned_data['password']
	# 		user.set_password(password)	
	# 		user.save()
	# if (request.method)=="GET":
	# 	form = form_class()
	# 	render(request,self.template,{'form':form})
	# if (request.method)=="POST":
	# 	form = form_class(request.POST)
	# 	if form.is_valid():
	# 		user = form.save(commit=False)
	# 		username = form.cleaned_data['username']
	# 		email = form.cleaned_data['email']
	# 		first_name = form.cleaned_data['first_name']
	# 		last_name = form.cleaned_data['last_name']
	# 		password = form.cleaned_data['password']
	# 		user.set_password(password)	
	# 		user.save()


	
