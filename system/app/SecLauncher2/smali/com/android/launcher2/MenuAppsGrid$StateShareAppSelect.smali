.class public Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateShareAppSelect"
.end annotation


# instance fields
.field private mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1855
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method protected complete()V
    .locals 20

    .prologue
    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 1877
    .local v3, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1879
    .local v11, r:Landroid/content/res/Resources;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1881
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 1882
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 1883
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    .line 1884
    .local v9, item:Lcom/android/launcher2/AppItem;
    const/4 v7, 0x0

    .line 1885
    .local v7, info:Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 1888
    .local v10, packName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->access$4700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;

    move-result-object v17

    iget-object v0, v9, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1893
    :goto_1
    const/4 v2, 0x0

    .line 1894
    .local v2, appWithVersion:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1895
    move-object v2, v10

    .line 1899
    :goto_2
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 1901
    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1889
    .end local v2           #appWithVersion:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1891
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1897
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #appWithVersion:Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " v "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1905
    .end local v2           #appWithVersion:Ljava/lang/String;
    .end local v7           #info:Landroid/content/pm/PackageInfo;
    .end local v9           #item:Lcom/android/launcher2/AppItem;
    .end local v10           #packName:Ljava/lang/String;
    .end local v16           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1907
    .local v14, strAllLabels:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1909
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 1910
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 1911
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    .line 1912
    .restart local v9       #item:Lcom/android/launcher2/AppItem;
    const/4 v7, 0x0

    .line 1913
    .restart local v7       #info:Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 1914
    .restart local v10       #packName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1917
    .restart local v2       #appWithVersion:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->access$4700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;

    move-result-object v17

    iget-object v0, v9, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1923
    :goto_4
    if-nez v7, :cond_3

    .line 1924
    move-object v2, v10

    .line 1929
    :goto_5
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    const-string v17, " ( http://market.android.com/search?q=pname:"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    iget-object v0, v9, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    const-string v17, " )\n"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1918
    :catch_1
    move-exception v5

    .line 1920
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 1926
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " v "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1934
    .end local v2           #appWithVersion:Ljava/lang/String;
    .end local v7           #info:Landroid/content/pm/PackageInfo;
    .end local v9           #item:Lcom/android/launcher2/AppItem;
    .end local v10           #packName:Ljava/lang/String;
    .end local v16           #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1936
    .local v15, strAllLinks:Ljava/lang/String;
    const v17, 0x7f0e008c

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1938
    .local v12, retString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v8, intent:Landroid/content/Intent;
    const-string v17, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e008d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 1944
    .local v4, chooserIntent:Landroid/content/Intent;
    const/high16 v17, 0x2000

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    .line 1946
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 1859
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1860
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 1861
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData(I)V

    .line 1864
    :cond_0
    return-void
.end method

.method public bridge synthetic enterItems(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItems(Ljava/lang/Iterable;)V

    return-void
.end method

.method public bridge synthetic exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Lcom/android/launcher2/MenuAppsGrid$State;)V

    return-void
.end method

.method public bridge synthetic exitItems(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItems(Ljava/lang/Iterable;)V

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
    .line 1868
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

    move-result-object v1

    .line 1869
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 1870
    .local v0, itemCount:I
    :goto_0
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateShareAppSelect::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return-object v1

    .line 1869
    .end local v0           #itemCount:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onAppModelUpdated()V
    .locals 0

    .prologue
    .line 1851
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onAppModelUpdated()V

    return-void
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1851
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1851
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public returnToPreviousState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1951
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 1953
    .local v1, newState:Lcom/android/launcher2/MenuAppsGrid$State;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1955
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "SHARE_SELECT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1956
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1957
    :cond_0
    const-string v3, "SHARE_SELECT"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1958
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1959
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SHARE_SELECT"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1961
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 1963
    const-string v3, "WIDGET"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1964
    const-string v3, "WIDGET"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1965
    const-string v3, "GRID_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1966
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1967
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 1983
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 1951
    .end local v1           #newState:Lcom/android/launcher2/MenuAppsGrid$State;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0

    .line 1968
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #newState:Lcom/android/launcher2/MenuAppsGrid$State;
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v3, "LIST"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1969
    const-string v3, "LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1970
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1971
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 1972
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_1

    .line 1973
    :cond_4
    const-string v3, "WIDGET_LIST"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1974
    const-string v3, "WIDGET_LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1975
    const-string v3, "LIST_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1976
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1977
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 1978
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto :goto_1

    .line 1980
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_1
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method
