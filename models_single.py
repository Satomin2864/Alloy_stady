from django.db import models


class Person(models.Model):
    name = models.CharField()
    age = models.IntegerField()
    sex = models.CharField()
    birthday = models.DateField()
