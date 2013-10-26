.class public Lcom/android/launcher2/AppItem;
.super Lcom/android/launcher2/BaseItem;
.source "AppItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.AppItem"


# instance fields
.field public mCell:I

.field public final mComponentName:Landroid/content/ComponentName;

.field public mCreateTime:J

.field protected mFolder:Lcom/android/launcher2/AppFolderItem;

.field public mHidden:Z

.field private mSavedCell:I

.field private mSavedDirty:Z

.field private mSavedFolder:Lcom/android/launcher2/AppFolderItem;

.field private mSavedHidden:Z

.field private mSavedScreen:I

.field public mScreenLocation:[I

.field public final mSystemApp:Z

.field public mUnavailable:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "cn"
    .parameter "isSystemApp"

    .prologue
    const/4 v2, 0x0

    .line 92
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 63
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    .line 93
    iput-object p1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 94
    iput-boolean p2, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    .line 95
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "type"
    .parameter "cn"
    .parameter "isSystemApp"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 63
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    .line 105
    iput-object p2, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 106
    iput-boolean p3, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    .line 107
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 173
    .local v1, info:Lcom/android/launcher2/AppItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v1           #info:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 219
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eq v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    .line 120
    :cond_1
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 121
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 123
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 125
    return-void
.end method

.method public editBegin()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 181
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    .line 182
    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    .line 183
    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    .line 185
    return-void
.end method

.method public editCommit()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->editIsDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    .line 192
    return-void
.end method

.method public editIsDirty()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editParentDestroyed()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 201
    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 202
    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 203
    return-void
.end method

.method public editRevert()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 207
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 208
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 209
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 210
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 211
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    .line 212
    return-void
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 272
    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 273
    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 275
    return-void
.end method

.method public makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 151
    .local v0, homeItem:Lcom/android/launcher2/HomeShortcutItem;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 152
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 158
    iget v1, p0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 159
    return-object v0
.end method

.method public parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 227
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_0

    .line 228
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 229
    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 230
    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_1

    .line 235
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 236
    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    .line 237
    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    .line 239
    :cond_1
    return-void
.end method

.method public removeFromFolder()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 248
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 250
    iget v1, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 251
    iget v1, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 253
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    .line 264
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unavailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public unhide()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 279
    return-void
.end method
