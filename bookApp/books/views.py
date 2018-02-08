from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Book
from django.contrib.auth import authenticate,login,logout
from django.views import generic
from django.views.generic import View
from django import forms
from .forms import RegisterUser
from django.contrib.auth.models import User
# from .forms import RegisterationForm

# from django.core.context_processors import csrf

# Create your views here.

# def index(request):
# 	return HttpResponse("hello world")

def userinfo(request,user_id):
	user = User.objects.get(id = user_id)
	return render(request, 'books/userinfo.html', {"user": user})


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
		else:
			render(request,'books/regForm.html',{'form':form})	
			

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
