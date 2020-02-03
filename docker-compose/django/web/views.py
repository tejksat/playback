from django.http import HttpResponse


def index(request):
    content = "<h1>This is the <code>web</code> index page</h1>"
    return HttpResponse(content)
