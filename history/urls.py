from django.urls import path
from . import views

urlpatterns = [
    path('artists/', views.index, name='index'),
    path('artists/<int:artist_id>/', views.detail, name='detail')
]