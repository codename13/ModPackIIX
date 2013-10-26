.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSelAppsToHide"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1415
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected complete()V
    .locals 6

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    .line 1427
    .local v1, checked:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1428
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1429
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .local v0, c:Lcom/android/launcher2/BaseItem;
    move-object v3, v0

    .line 1430
    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 1431
    .local v3, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->hide()V

    goto :goto_0

    .line 1433
    .end local v0           #c:Lcom/android/launcher2/BaseItem;
    .end local v3           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 1436
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    .line 1437
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1438
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 1419
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1420
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 1421
    return-void
.end method
