from django.shortcuts import render
from django.http import HttpResponse
from .models import Posts

# Create your views here.

def main(request):

    data=Posts.objects.all().order_by('postdate').reverse  #postlar yeni eklenen en başa gelsin diye order by kısmını gerçekleştirdik

    return render(request,'index.html',{'info':data})
    
def gotopost(request,postid):

    data=Posts.objects.filter(id=postid)
    
    return render(request,'postdetail.html',{'data':data})