from django.conf.urls import url


urlpatterns = [
    url(r'^user/(?P<username>[-\w]+)/$', 'marcador.views.bookmark_user',
        name='marcador_bookmark_user'),
    url(r'^create/$', 'marcador.views.bookmark_create',
        name='marcador_bookmark_create'),
    url(r'^edit/(?P<pk>\d+)/$', 'marcador.views.bookmark_edit',
        name='marcador_bookmark_edit'),
    url(r'^delete/(?P<pk>\d+)/$', 'marcador.views.bookmark_delete',
        name='marcador_bookmark_delete'),
    url(r'^$', 'marcador.views.bookmark_list', name='marcador_bookmark_list'),
]
