.class public abstract Lcom/android/launcher2/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BaseItem$Type;
    }
.end annotation


# static fields
.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public mBadgeCount:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconResId:I

.field public mIconShadowBitmap:Landroid/graphics/Bitmap;

.field public mId:J

.field public mScreen:I

.field public mTitle:Ljava/lang/String;

.field public mTitleResId:I

.field public final mType:Lcom/android/launcher2/BaseItem$Type;


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 93
    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 94
    return-void
.end method

.method public static isItemInFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, result:Z
    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    .line 143
    const/4 v1, 0x1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 145
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 147
    .local v0, homeItem:Lcom/android/launcher2/HomeItem;
    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 150
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getItemType()Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 127
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
