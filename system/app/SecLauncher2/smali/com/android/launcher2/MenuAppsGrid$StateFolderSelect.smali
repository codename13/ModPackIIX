.class Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateFolderSelect"
.end annotation


# static fields
.field private static final SELECTED_FOLDER_ID:Ljava/lang/String; = "SELECTED_FOLDER_ID"

.field private static final UNSPECIFIED:J = -0x1L


# instance fields
.field private mTargetFolderId:J

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 2
    .parameter

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    .line 1740
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1738
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1738
    iput-wide p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-wide p1
.end method


# virtual methods
.method protected complete()V
    .locals 10

    .prologue
    .line 1763
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    .line 1765
    .local v6, targetFolder:Lcom/android/launcher2/FolderItem;
    if-nez v6, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedViews()Ljava/util/List;

    move-result-object v7

    .line 1768
    .local v7, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v5

    .line 1770
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    const/4 v1, 0x0

    .line 1771
    .local v1, folderScreenIndex:I
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 1772
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1773
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    move-object v8, v6

    check-cast v8, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1774
    move v1, v2

    .line 1780
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    if-eq v8, v1, :cond_2

    .line 1781
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 1785
    :cond_2
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 1786
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    invoke-static {v8, v7, v6, v5, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V

    .line 1788
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 1789
    .local v4, item:Lcom/android/launcher2/BaseItem;
    invoke-interface {v6, v4}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2

    .line 1772
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1791
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1792
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    goto :goto_0
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 1746
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1747
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Z)V
    invoke-static {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 1748
    return-void

    .line 1747
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 1752
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1753
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .line 1756
    .local v0, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    .line 1757
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 1759
    :cond_0
    return-void
.end method

.method public getTargetFolder()Lcom/android/launcher2/FolderItem;
    .locals 5

    .prologue
    .line 1835
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 1837
    .local v0, item:Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 1838
    .local v1, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1839
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .line 1842
    :cond_0
    return-object v1
.end method

.method public onAppModelUpdated()V
    .locals 5

    .prologue
    .line 1822
    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    .line 1829
    .local v0, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    .line 1830
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, rc:Z
    if-eqz p1, :cond_0

    .line 1808
    const-string v2, "SELECTED_FOLDER_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 1809
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 1810
    .local v1, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v1, :cond_0

    .line 1811
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 1812
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    .line 1813
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1814
    const/4 v0, 0x1

    .line 1817
    .end local v1           #targetFolder:Lcom/android/launcher2/FolderItem;
    :cond_0
    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1798
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    .line 1799
    if-eqz p1, :cond_0

    .line 1800
    const-string v0, "SELECTED_FOLDER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1802
    :cond_0
    return-void
.end method
