.class final Lcom/android/launcher2/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callingFunction:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$hf_cp:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$itemId:J

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;JLjava/lang/String;Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    iput-wide p5, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/launcher2/LauncherModel$3;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x65

    const/4 v6, 0x0

    .line 410
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    iget-boolean v3, v3, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    .line 412
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CP] RUN - updateItemInDatabaseHelper item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 415
    .local v1, modelItem:Lcom/android/launcher2/HomeItem;
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    if-eq v3, v1, :cond_2

    .line 418
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modelItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "modelItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error: HomeItem passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t match original"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    const-string v3, "null"

    goto :goto_0

    .line 428
    :cond_2
    iget-wide v3, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-wide v3, v1, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_5

    .line 430
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 431
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v3, v3, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v0, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$hf_cp:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeFragment;->updateItems_CP(Ljava/util/List;)V

    .line 442
    .end local v0           #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    :cond_4
    :goto_1
    return-void

    .line 440
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
