# Generated by Django 2.0.1 on 2018-02-03 22:56

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Auther',
            fields=[
                ('auther_id', models.AutoField(primary_key=True, serialize=False)),
                ('auther_name', models.CharField(max_length=200)),
                ('Dob', models.DateField()),
                ('Bio', models.TextField()),
                ('image', models.ImageField(upload_to='books/images')),
                ('contact', models.EmailField(max_length=300)),
            ],
        ),
        migrations.CreateModel(
            name='Book',
            fields=[
                ('book_id', models.AutoField(primary_key=True, serialize=False)),
                ('book_name', models.CharField(max_length=200)),
                ('published_at', models.DateField()),
                ('country', models.CharField(max_length=100)),
                ('link', models.URLField(max_length=1000)),
                ('summary', models.CharField(max_length=1000)),
                ('image', models.ImageField(upload_to='books/images')),
                ('author_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Auther')),
            ],
        ),
        migrations.CreateModel(
            name='Cat_user',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('category_id', models.AutoField(primary_key=True, serialize=False)),
                ('category_name', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Category_book',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('book_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Book')),
                ('category_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Category')),
            ],
        ),
        migrations.CreateModel(
            name='User_auther',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('auther_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Auther')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='User_book',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.CharField(choices=[('w', 'wishlist'), ('r', 'read'), ('n', 'no_choice')], default='n', max_length=100)),
                ('rate', models.CharField(choices=[('1', 'one'), ('2', 'two'), ('3', 'three'), ('4', 'four'), ('5', 'five')], default='3', max_length=100)),
                ('book_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Book')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='category',
            name='book',
            field=models.ManyToManyField(through='books.Category_book', to='books.Book'),
        ),
        migrations.AddField(
            model_name='category',
            name='user',
            field=models.ManyToManyField(through='books.Cat_user', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='cat_user',
            name='category_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Category'),
        ),
        migrations.AddField(
            model_name='cat_user',
            name='user_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='book',
            name='user',
            field=models.ManyToManyField(through='books.User_book', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='auther',
            name='user',
            field=models.ManyToManyField(through='books.User_auther', to=settings.AUTH_USER_MODEL),
        ),
    ]
