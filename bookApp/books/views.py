from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.contrib.auth import login,get_user_model
from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from .models import Book
from django.contrib.auth import authenticate,login,logout
from django.views import generic
from django.views.generic import View
from django import forms
<<<<<<< HEAD
from .forms import RegisterUser
from django.contrib.auth.models import User
=======
from .forms import RegisterUser,user_login
>>>>>>> fb7312e5d0ec9841ed683d23670e6bf8bc670d61
# from .forms import RegisterationForm

# from django.core.context_processors import csrf

# Create your views here.

<<<<<<< HEAD
# def index(request):
# 	return HttpResponse("hello world")

def userinfo(request,user_id):
	user = User.objects.get(id = user_id)
	return render(request, 'books/userinfo.html', {"user": user})
=======
User=get_user_model()

def index(request):
	if request.user.is_authentcated():
		# print("hello"+request.user.first_name)
		# return HttpResponse("hello world")
		return render (request,"books/home.html",{})
	
>>>>>>> fb7312e5d0ec9841ed683d23670e6bf8bc670d61


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
			return HttpResponseRedirect("/books/login")
		return render(request,"books/login.html",{'form':form})	


def logoutView(request,*args,**kwargs):
	logout(request)
	return HttpResponseRedirect("/books/login/")

def authorView(request,*args,**kwargs):
	return render(request,'books/author.html',{})			

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


class loginForm():
	pass			
