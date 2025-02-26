
from django.shortcuts import render
from django.shortcuts import render, HttpResponse, redirect

def index(request):
    return render(request, "illumi_webpage/index.html")


# Create your views here.

def indexxx(request):
    return HttpResponse("Commutination start")