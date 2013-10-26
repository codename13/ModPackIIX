.class Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;
.super Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;
.source "MenuWidgetsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgetsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filterWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, availableWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    #getter for: Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsSearch;->access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, search:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AvailableWidget;

    .line 126
    .local v3, widget:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v3}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v3           #widget:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    invoke-super {p0, v1}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;->filterWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method
