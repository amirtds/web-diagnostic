from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('ping/', include('ping.urls')),
    path('', views.index, name='index'),
]