from django.contrib.auth.models import User
from django.contrib.auth import get_user_model,authenticate
from django import forms
from .models import Author
from django.core.validators import RegexValidator
from django.core.exceptions import ValidationError
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


class user_login(forms.Form):
	username=forms.CharField(label="Username",validators=[RegexValidator(
		regex='^[a-zA-z0-9.@+-]*$',
		message="username must be alphanumeric",
		code="invalid_username"
		)])
	password=forms.CharField(label="password",widget=forms.PasswordInput)

	
	def clean(self):
		username=self.cleaned_data.get("username")
		password=self.cleaned_data.get("password")
		the_user=authenticate(username=username,password=password)
		if not the_user:
			raise forms.ValidationError("invalid Credentials")
		return super(user_login,self).clean()
				
		# user_obj=User.objects.filter(username=username).first()
		# if not user_obj:
		# 	raise forms.ValidationError("invalid username")
		# else:	
		# 	if not user_obj.check_password(password):
		# 		raise forms.ValidationError("invalid password")
		# return super(user_login,self).clean(*args,*kwargs)	


	# def clean_username(self):
	# 	username=self.cleaned_data.get("username")
	# 	username_check=User.objects.filter(username=username)
	# 	username_exists=username_check.exists()
	# 	if not username_exists and username_check.count() !=1:
	# 		raise forms.ValidationError("invalid username")
	# 	return username	

