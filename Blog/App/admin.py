from django.contrib import admin
from .models import Posts

@admin.register(Posts)
# admin.site.register(Posts)

class Posts(admin.ModelAdmin):
    list_display =["postauthor","postheader","postdate"]

    list_display_links=["postauthor","postheader","postdate"]

    search_fields=["postheader"]

    list_filter=["postdate"] 

    class Meta:
        model= Posts

# Register your models here.
