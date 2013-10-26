.class final Lcom/android/launcher2/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$hf_cp:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/android/launcher2/HomeFragment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$10;->val$ids:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$10;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 891
    const/4 v7, 0x0

    .line 892
    .local v7, updated:Z
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$ids:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 893
    .local v6, itemId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 894
    .local v3, id:J
    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Z

    move-result v10

    invoke-static {v3, v4, v9, v10}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v8

    .line 895
    .local v8, uriToDelete:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v9, v8, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 896
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 897
    .local v5, item:Lcom/android/launcher2/HomeItem;
    if-eqz v5, :cond_0

    .line 898
    const/4 v7, 0x1

    .line 899
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v9, Lcom/android/launcher2/LauncherModel$15;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v10, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v10}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 924
    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 903
    :pswitch_1
    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 904
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 917
    :cond_1
    :goto_1
    sget-boolean v9, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    if-eqz v9, :cond_0

    iget-wide v9, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v11, -0x65

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 918
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 919
    .local v1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v9, v1}, Lcom/android/launcher2/HomeFragment;->updateItems_CP(Ljava/util/List;)V

    goto :goto_0

    .line 911
    .end local v1           #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v9

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 912
    .local v0, folder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v0, v5}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 927
    .end local v0           #folder:Lcom/android/launcher2/HomeFolderItem;
    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 930
    :pswitch_3
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 936
    .end local v3           #id:J
    .end local v5           #item:Lcom/android/launcher2/HomeItem;
    .end local v6           #itemId:Ljava/lang/Long;
    .end local v8           #uriToDelete:Landroid/net/Uri;
    :cond_3
    if-eqz v7, :cond_4

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$notify:Z

    if-eqz v9, :cond_4

    .line 937
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 939
    :cond_4
    return-void

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
