from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.template import loader
from .models import Artist
from .models import Song

# display list of artists
def index(request):
  list_of_artists = Artist.objects.order_by('artist_formed')
  context = {'list_of_artists': list_of_artists,}
  return render(request, 'history/index.html', context)

# display songs associated with selected artist
def detail(request, artist_id):
  artist = get_object_or_404(Artist, pk=artist_id)
  song_names = Song.objects.filter(artist_id = artist_id)[:5]
  context = {'song_names': song_names, 'artist': artist}
  # check if the artist has any more songs. If not, don't show the "Click to load more songs" button
  song_names_expanded = Song.objects.filter(artist_id = artist_id)
  if len(song_names) == len(song_names_expanded):
    return render(request, 'history/expanded.html', context)
  else:
    return render(request, 'history/detail.html', context)

# expand list of songs beyond the top 5
def expanded(request, artist_id):
  artist = get_object_or_404(Artist, pk=artist_id)
  song_names = Song.objects.filter(artist_id = artist_id)
  context = {'song_names': song_names, 'artist': artist}
  return render(request, 'history/expanded.html', context)

def add(request):
  if request.method == 'POST':
    try:
      name = request.POST['artist_name']
      date = request.POST['date_formed']
      if name == '' or date == '':
        return render(request, 'history/add.html', {
          'error_message': "You must complete all fields in the form."
          })
      else:
        new_artist = Artist(artist_name=name, artist_formed=date)
        new_artist.save()
        return HttpResponseRedirect(reverse('history:index'))
    except KeyError:
      return render(request, 'history/add.html', {
        'error_message': "You must complete all fields in the form."
        })
  # if navigating to the add page, only the form is loaded.
  else:
    context = {}
    return render(request, 'history/add.html', context)