.class public Lcom/android/launcher2/AppFolderItem;
.super Lcom/android/launcher2/AppItem;
.source "AppFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFolderItem$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z

.field private mSavedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppItem;-><init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    .line 33
    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 38
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .parameter "minPos"
    .parameter "maxPos"
    .parameter "adjustValue"

    .prologue
    .line 127
    if-gt p1, p2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 129
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 130
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 133
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 246
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 54
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 7
    .parameter "item"
    .parameter "position"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 73
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can only add MENU_APPs to MENU_FOLDERs"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    .line 77
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 78
    .local v1, appItem:Lcom/android/launcher2/AppItem;
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 79
    .local v4, size:I
    if-ltz p2, :cond_1

    if-le p2, v4, :cond_2

    .line 80
    :cond_1
    move p2, v4

    .line 82
    :cond_2
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v5, p0, :cond_5

    .line 84
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v5, p2, :cond_3

    .line 85
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v5, p2, :cond_4

    .line 86
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v3, v5, 0x1

    .line 87
    .local v3, minAdjustPos:I
    add-int/lit8 v2, p2, -0x1

    .line 88
    .local v2, maxAdjustPos:I
    const/4 v0, -0x1

    .line 89
    .local v0, adjustDelta:I
    add-int/lit8 p2, p2, -0x1

    .line 95
    :goto_0
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 96
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 115
    .end local v0           #adjustDelta:I
    .end local v2           #maxAdjustPos:I
    .end local v3           #minAdjustPos:I
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 117
    return-void

    .line 91
    :cond_4
    move v3, p2

    .line 92
    .restart local v3       #minAdjustPos:I
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v5, -0x1

    .line 93
    .restart local v2       #maxAdjustPos:I
    const/4 v0, 0x1

    .restart local v0       #adjustDelta:I
    goto :goto_0

    .line 100
    .end local v0           #adjustDelta:I
    .end local v2           #maxAdjustPos:I
    .end local v3           #minAdjustPos:I
    :cond_5
    add-int/lit8 v2, v4, -0x1

    .line 101
    .restart local v2       #maxAdjustPos:I
    move v3, p2

    .line 102
    .restart local v3       #minAdjustPos:I
    const/4 v0, 0x1

    .line 104
    .restart local v0       #adjustDelta:I
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v5, :cond_6

    .line 105
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 109
    :goto_2
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 110
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 111
    const/4 v5, -0x1

    iput v5, v1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 112
    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 113
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_6
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public childDestroyed(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    return-void
.end method

.method public containsNonSystemApps()Z
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 191
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 193
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->destroy()V

    .line 203
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 204
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_0

    .line 206
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 208
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_1

    .line 210
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 211
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 212
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 213
    return-void
.end method

.method public editBegin()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editBegin()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 220
    return-void
.end method

.method public editCommit()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 225
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 226
    return-void
.end method

.method public editDestroy()V
    .locals 3

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 230
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editParentDestroyed()V

    goto :goto_0

    .line 231
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public editRevert()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editRevert()V

    .line 236
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 238
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 239
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 149
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 170
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iput-object p0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 256
    return-void
.end method

.method public normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 264
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, -0x1

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 277
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 278
    iput v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 281
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 300
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 309
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "title"

    .prologue
    .line 285
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderName(Lcom/android/launcher2/AppFolderItem;)V

    .line 290
    :cond_2
    return-void
.end method
