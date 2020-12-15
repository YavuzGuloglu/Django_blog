from django.db import models

# Create your models here.

class Posts(models.Model):
    postauthor = models.CharField(max_length=50, verbose_name="Yazar")
    postheader= models.CharField( max_length=100, verbose_name="Başlık")
    postcontent=models.TextField(verbose_name="İçerik")
    postdate=models.DateField(auto_now_add=True, verbose_name="Tarih")
    postimage=models.TextField(verbose_name="Resim")
    
    def __str__(self):
        return self.postheader
