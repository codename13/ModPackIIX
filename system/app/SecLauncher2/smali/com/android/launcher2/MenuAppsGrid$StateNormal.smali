.class Lcom/android/launcher2/MenuAppsGrid$StateNormal;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getItemViews()Ljava/lang/Iterable;

    move-result-object v13

    .line 996
    .local v13, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v5, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/FolderIconView;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 999
    .local v12, view:Landroid/view/View;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/android/launcher2/FolderIconView;

    if-ne v14, v15, :cond_1

    .line 1000
    check-cast v12, Lcom/android/launcher2/FolderIconView;

    .end local v12           #view:Landroid/view/View;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v12       #view:Landroid/view/View;
    :cond_1
    move-object v9, v12

    .line 1004
    check-cast v9, Lcom/android/launcher2/AppIconView;

    .line 1005
    .local v9, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    .line 1007
    .local v10, item:Lcom/android/launcher2/AppItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/BaseItem;

    .line 1008
    .local v11, updatedItem:Lcom/android/launcher2/BaseItem;
    if-ne v10, v11, :cond_2

    .line 1009
    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    .line 1010
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #icon:Lcom/android/launcher2/AppIconView;
    .end local v10           #item:Lcom/android/launcher2/AppItem;
    .end local v11           #updatedItem:Lcom/android/launcher2/BaseItem;
    .end local v12           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    .line 1017
    .local v2, folder:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    .line 1019
    .local v3, folderItem:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v4

    .line 1021
    .local v4, folderItemCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v4, :cond_4

    .line 1022
    invoke-virtual {v3, v6}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1023
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/BaseItem;

    .line 1024
    .restart local v11       #updatedItem:Lcom/android/launcher2/BaseItem;
    if-ne v1, v11, :cond_5

    .line 1025
    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    .line 1026
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    .end local v11           #updatedItem:Lcom/android/launcher2/BaseItem;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1032
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    .end local v2           #folder:Lcom/android/launcher2/FolderIconView;
    .end local v3           #folderItem:Lcom/android/launcher2/AppFolderItem;
    .end local v4           #folderItemCount:I
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1033
    const/4 v5, 0x0

    .line 1034
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1095
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setNormalTitleBarVisibility(I)V

    .line 1096
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$8;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1107
    :goto_0
    return-void

    .line 1102
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public enterItems(Ljava/lang/Iterable;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1122
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 1123
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->showBadge()V

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1128
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1129
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 1136
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_0
    return-void

    .line 1116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItems(Ljava/lang/Iterable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1141
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    .line 1142
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    goto :goto_0

    .line 1145
    :cond_1
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1080
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1088
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1038
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 1042
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1046
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "WIDGET"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1048
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIDGET"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1049
    const-string v2, "GRID_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1051
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 1052
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 1076
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1054
    :cond_1
    const-string v2, "LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1055
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1056
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1057
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1059
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 1060
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 1061
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    goto :goto_0

    .line 1062
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "WIDGET_LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1063
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1064
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIDGET_LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1065
    const-string v2, "LIST_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1067
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1068
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 1069
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 1070
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    goto :goto_0

    .line 1073
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0
.end method
