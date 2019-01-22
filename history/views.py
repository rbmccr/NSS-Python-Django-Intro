from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Artist
from .models import Song


def index(request):
  list_of_artists = Artist.objects.order_by('artist_formed')[:15]
  context = {'list_of_artists': list_of_artists,}
  return render(request, 'history/index.html', context)

def detail(request, artist_id):
  # return HttpResponse("You're looking at artist #%s." % artist_id)
  song_names = Song.objects.raw(f'SELECT * FROM history_song WHERE history_song.artist_id = {artist_id}')[:15]
  artist_details = Artist.objects.raw(f'SELECT * FROM history_artist WHERE history_artist.id = {artist_id}')
  template = loader.get_template('history/detail.html')
  context = {
    'song_names': song_names,
    'artist_details': artist_details
  }
  return HttpResponse(template.render(context, request))