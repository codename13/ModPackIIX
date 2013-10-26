.class Lcom/android/launcher2/HomeFolderItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFolderItem$FolderListener;
    }
.end annotation


# static fields
.field public static final IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
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

.field private mOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/android/launcher2/HomeFolderItem$1;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .parameter "minPos"
    .parameter "maxPos"
    .parameter "adjustValue"

    .prologue
    .line 166
    if-gt p1, p2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 168
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 169
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 172
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method static createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;
    .locals 14
    .parameter "ctx"
    .parameter "appFolderItem"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 53
    new-instance v1, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v1}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 54
    .local v1, item:Lcom/android/launcher2/HomeFolderItem;
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 55
    const/4 v7, 0x0

    move-object v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 58
    const/4 v11, 0x0

    .line 59
    .local v11, badgeSum:I
    invoke-virtual {p1}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v13

    .line 60
    .local v13, itemCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 61
    invoke-virtual {p1, v12}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    .line 62
    .local v10, appItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v10}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    .line 63
    .local v3, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {v1, v3}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 64
    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    .line 65
    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget v6, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 67
    iget v0, v10, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v11, v0

    .line 60
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 70
    .end local v3           #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    .end local v10           #appItem:Lcom/android/launcher2/AppItem;
    :cond_0
    iput v11, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 71
    return-object v1
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 88
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 11
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v10, -0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can only add HOME_APPLICATIONs or HOME_SHORTCUTs to HOME_FOLDERs"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v1, p1

    .line 111
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 112
    .local v1, homeItem:Lcom/android/launcher2/HomeItem;
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 113
    .local v5, size:I
    if-ltz p2, :cond_1

    if-le p2, v5, :cond_2

    .line 114
    :cond_1
    move p2, v5

    .line 116
    :cond_2
    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, p0, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v6, p2, :cond_3

    .line 119
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v6, p2, :cond_4

    .line 120
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v4, v6, 0x1

    .line 121
    .local v4, minAdjustPos:I
    add-int/lit8 v3, p2, -0x1

    .line 122
    .local v3, maxAdjustPos:I
    const/4 v0, -0x1

    .line 123
    .local v0, adjustDelta:I
    add-int/lit8 p2, p2, -0x1

    .line 129
    :goto_0
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 130
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 149
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 150
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .end local v2           #i:I
    :cond_4
    move v4, p2

    .line 126
    .restart local v4       #minAdjustPos:I
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v3, v6, -0x1

    .line 127
    .restart local v3       #maxAdjustPos:I
    const/4 v0, 0x1

    .restart local v0       #adjustDelta:I
    goto :goto_0

    .line 134
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    :cond_5
    add-int/lit8 v3, v5, -0x1

    .line 135
    .restart local v3       #maxAdjustPos:I
    move v4, p2

    .line 136
    .restart local v4       #minAdjustPos:I
    const/4 v0, 0x1

    .line 138
    .restart local v0       #adjustDelta:I
    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 142
    :cond_6
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 143
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 144
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 145
    iget-wide v6, p0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 146
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 147
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 153
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    .restart local v2       #i:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 156
    return-void
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public getContainer()J
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 188
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 209
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/HomeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 225
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    .line 289
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    .line 298
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "title"

    .prologue
    .line 229
    iput-object p2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p2}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onTitleChanged(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 234
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFolderItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 278
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    return-void
.end method
