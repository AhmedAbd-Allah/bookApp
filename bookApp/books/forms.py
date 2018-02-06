from django.contrib.auth.models import User
from django.contrib.auth import get_user_model,authenticate
from django import forms
from .models import Author
User=get_user_model()

class RegisterUser(forms.ModelForm):
    

    first_name=forms.CharField(label='First Name',max_length=100)
    last_name=forms.CharField(label='Last Name',max_length=100)
    username=forms.CharField(label='Username',max_length=100)
    email = forms.EmailField(label='Email', max_length=100)
    password = forms.CharField(label='Password',widget=forms.PasswordInput)

    class Meta:
    	model = User
    	fields = ['first_name','last_name','username','email','password']
