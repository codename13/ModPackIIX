.class Lcom/android/launcher2/Workspace$14;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$removed:Ljava/util/List;

.field final synthetic val$viewsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Ljava/util/List;Landroid/view/ViewGroup;Ljava/util/List;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$14;->val$viewsToRemove:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$14;->val$layout:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$14;->val$removed:Ljava/util/List;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$14;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2111
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2112
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2113
    .local v2, childCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    if-ge v8, v2, :cond_6

    .line 2114
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2115
    .local v11, view:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    .line 2116
    .local v10, tag:Lcom/android/launcher2/HomeItem;
    if-nez v10, :cond_1

    .line 2113
    .end local v11           #view:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2119
    .restart local v11       #view:Landroid/view/View;
    :cond_1
    iget-object v12, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v12, v13, :cond_5

    move-object v4, v10

    .line 2120
    check-cast v4, Lcom/android/launcher2/FolderItem;

    .line 2121
    .local v4, folder:Lcom/android/launcher2/FolderItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v0, appsToRemoveFromFolder:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    .line 2125
    .local v3, contentsCount:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    if-ge v9, v3, :cond_3

    .line 2126
    invoke-interface {v4, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v7

    .line 2127
    .local v7, itemInFolder:Lcom/android/launcher2/BaseItem;
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$removed:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2128
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2131
    .end local v7           #itemInFolder:Lcom/android/launcher2/BaseItem;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    .line 2133
    .local v6, item:Lcom/android/launcher2/BaseItem;
    invoke-interface {v4, v6}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2134
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v12}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .end local v6           #item:Lcom/android/launcher2/BaseItem;
    invoke-static {v12, v6}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    .line 2140
    :cond_4
    check-cast v11, Lcom/android/launcher2/FolderIconView;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 2141
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v12}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v12}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v12

    if-ne v12, v4, :cond_0

    .line 2142
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v12}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    goto :goto_1

    .line 2145
    .end local v0           #appsToRemoveFromFolder:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    .end local v3           #contentsCount:I
    .end local v4           #folder:Lcom/android/launcher2/FolderItem;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #k:I
    .restart local v11       #view:Landroid/view/View;
    :cond_5
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$removed:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2146
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v12}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2147
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2151
    .end local v10           #tag:Lcom/android/launcher2/HomeItem;
    .end local v11           #view:Landroid/view/View;
    :cond_6
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 2152
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2155
    .local v1, child:Landroid/view/View;
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v12, v1}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_4

    .line 2157
    .end local v1           #child:Landroid/view/View;
    :cond_7
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2158
    iget-object v12, p0, Lcom/android/launcher2/Workspace$14;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->invalidate()V

    .line 2160
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    return-void
.end method
