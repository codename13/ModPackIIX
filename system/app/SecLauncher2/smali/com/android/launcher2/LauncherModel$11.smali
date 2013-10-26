.class final Lcom/android/launcher2/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$hf_cp:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$11;->val$uriToDelete:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$11;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 973
    sget-object v4, Lcom/android/launcher2/LauncherModel$15;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 996
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v4, v5, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 997
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v5, v5, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1002
    .local v1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/HomeFragment;->updateItems_CP(Ljava/util/List;)V

    .line 1005
    .end local v1           #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-boolean v4, v4, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v4, :cond_2

    .line 1006
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CP] deleteItemFromDatabase : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_2
    return-void

    .line 975
    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v5, v5, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 977
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$11;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v7, v7, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 979
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem;

    .line 980
    .local v3, info:Lcom/android/launcher2/HomeFolderItem;
    iget-object v4, v3, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 981
    .local v0, childInfo:Lcom/android/launcher2/BaseItem;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 987
    .end local v0           #childInfo:Lcom/android/launcher2/BaseItem;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/android/launcher2/HomeFolderItem;
    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 990
    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 993
    :pswitch_3
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$11;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
