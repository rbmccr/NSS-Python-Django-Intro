from django.urls import path
from . import views

app_name = 'history'
urlpatterns = [
    path('artists/', views.index, name='index'),
    path('artists/<int:artist_id>/', views.detail, name='detail'),
    path('artists/<int:artist_id>/expanded', views.expanded, name='expanded'),
    path('artists/add', views.add, name='add')
]