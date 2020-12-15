
from django.contrib import admin
from django.urls import path
from App import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.main,name="main"),
    path('index/', views.main,name="index"),
    path('postdetail/<int:postid>/', views.gotopost, name="gotopost")
]
