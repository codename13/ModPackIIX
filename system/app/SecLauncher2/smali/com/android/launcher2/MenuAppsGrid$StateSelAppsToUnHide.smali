.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSelAppsToUnHide"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x0

    return v0
.end method

.method protected complete()V
    .locals 6

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    .line 1454
    .local v1, checked:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1455
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1456
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

    .line 1457
    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 1458
    .local v3, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->unhide()V

    goto :goto_0

    .line 1460
    .end local v0           #c:Lcom/android/launcher2/BaseItem;
    .end local v3           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 1462
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    .line 1463
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1464
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 1446
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1447
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 1448
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getHiddenApps()Ljava/util/List;

    move-result-object v1

    .line 1469
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 1470
    .local v0, itemCount:I
    :goto_0
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateSelAppsToUnHide:getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-object v1

    .line 1469
    .end local v0           #itemCount:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
