from django.http import JsonResponse

def ping(request):
    data = {
        'message': request.GET.get('ECHOMSG', '')
    }
    return JsonResponse(data)