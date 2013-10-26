.class public Lcom/android/launcher2/AllappsIcon;
.super Lcom/android/launcher2/AppIconView;
.source "AllappsIcon.java"


# instance fields
.field private final kLidCenterYFactor:F

.field private mAllAppsIconAlpha:F

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mHovering:Z

.field private mIsAnimating:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShowHotseatTitle:Z

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashBitmap:Landroid/graphics/Bitmap;

.field private mTrashBitmapHover:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIconSet:Z

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;)V

    .line 17
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->kLidCenterYFactor:F

    .line 27
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllappsIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v1, p0, Lcom/android/launcher2/AllappsIcon;->mLidOffsetY:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    .line 78
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mHovering:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    .line 36
    invoke-direct {p0}, Lcom/android/launcher2/AllappsIcon;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->kLidCenterYFactor:F

    .line 27
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllappsIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v1, p0, Lcom/android/launcher2/AllappsIcon;->mLidOffsetY:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    .line 78
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mHovering:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/AllappsIcon;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->kLidCenterYFactor:F

    .line 27
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllappsIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v1, p0, Lcom/android/launcher2/AllappsIcon;->mLidOffsetY:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    .line 78
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mHovering:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    .line 46
    invoke-direct {p0}, Lcom/android/launcher2/AllappsIcon;->init()V

    .line 47
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 4
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "bounds"
    .parameter "alpha"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 200
    .local v0, dx:I
    iget-object v1, p0, Lcom/android/launcher2/AllappsIcon;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget v1, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/AllappsIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 55
    const v2, 0x7f020061

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBitmapHover:Landroid/graphics/Bitmap;

    .line 58
    const v2, 0x7f02005f

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBitmap:Landroid/graphics/Bitmap;

    .line 61
    const v2, 0x7f02005e

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 64
    const v2, 0x7f020060

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 67
    const v2, 0x7f020062

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AllappsIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 70
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090004

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/AllappsIcon;->mShowHotseatTitle:Z

    .line 72
    return-void

    .line 70
    :cond_0
    const v2, 0x7f090003

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    invoke-super {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 157
    .local v4, r:Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 159
    iget-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-eqz v6, :cond_2

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 163
    .local v0, clipR:Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 164
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 165
    .local v5, rec:Landroid/graphics/Rect;
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 166
    invoke-super {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    .end local v0           #clipR:Landroid/graphics/Rect;
    .end local v5           #rec:Landroid/graphics/Rect;
    :cond_2
    iget-boolean v6, p0, Lcom/android/launcher2/AllappsIcon;->mIsTrashCanShakeMode:Z

    if-eqz v6, :cond_3

    .line 171
    iget-object v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v6, v4, v9}, Lcom/android/launcher2/AllappsIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 172
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/launcher2/AllappsIcon;->mLidOffsetY:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getWidth()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 175
    .local v2, lidCenterX:I
    const v6, 0x3ecccccd

    iget-object v7, p0, Lcom/android/launcher2/AllappsIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 176
    .local v3, lidCenterY:I
    iget v6, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 177
    iget-object v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v6, v4, v9}, Lcom/android/launcher2/AllappsIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 182
    .end local v2           #lidCenterX:I
    .end local v3           #lidCenterY:I
    :cond_3
    iget v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanAlpha:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4

    .line 183
    iget-object v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBitmapHover:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v6, v4, v7}, Lcom/android/launcher2/AllappsIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 185
    :cond_4
    iget v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanFillAlpha:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v6, v4, v7}, Lcom/android/launcher2/AllappsIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 188
    :cond_5
    iget v6, p0, Lcom/android/launcher2/AllappsIcon;->mAllAppsIconAlpha:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 190
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 191
    iget v6, p0, Lcom/android/launcher2/AllappsIcon;->mAllAppsIconAlpha:F

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    invoke-super {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getTrashCanLidAngle()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrashCanShakeMode()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method public setAnimating(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    .line 231
    if-nez p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public setHomeFragment(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/launcher2/AllappsIcon;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 76
    return-void
.end method

.method public setIconAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 214
    iput p1, p0, Lcom/android/launcher2/AllappsIcon;->mAllAppsIconAlpha:F

    .line 215
    return-void
.end method

.method public setTrashCanAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 205
    iput p1, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanAlpha:F

    .line 206
    return-void
.end method

.method public setTrashCanFillAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 210
    iput p1, p0, Lcom/android/launcher2/AllappsIcon;->mTrashCanFillAlpha:F

    .line 211
    return-void
.end method

.method public setTrashCanLidAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 245
    iput p1, p0, Lcom/android/launcher2/AllappsIcon;->mLidAngle:F

    .line 246
    return-void
.end method

.method setTrashCanLidOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iput p2, p0, Lcom/android/launcher2/AllappsIcon;->mLidOffsetY:I

    .line 242
    return-void
.end method

.method public setTrashCanShakeMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/launcher2/AllappsIcon;->mIsTrashCanShakeMode:Z

    .line 219
    return-void
.end method

.method public setTrashIcon(Z)V
    .locals 8
    .parameter "hovering"

    .prologue
    const v7, 0x7f070040

    const/4 v4, 0x1

    .line 82
    const-string v5, "AllappsIcon"

    const-string v6, "setTrashIcon is called"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v5, p0, Lcom/android/launcher2/AllappsIcon;->mHovering:Z

    if-ne v5, p1, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    if-eqz v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/AllappsIcon;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/android/launcher2/AllappsIcon;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    .line 87
    .local v1, hotseat:Lcom/android/launcher2/Hotseat;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1, v7}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x140

    if-gt v5, v6, :cond_3

    move v2, v4

    .line 91
    .local v2, isLandWVGA:Z
    :goto_1
    if-eqz v2, :cond_4

    const v0, 0x7f02000c

    .line 93
    .local v0, bottomBar:I
    :goto_2
    iput-boolean p1, p0, Lcom/android/launcher2/AllappsIcon;->mHovering:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    .line 95
    iget-boolean v4, p0, Lcom/android/launcher2/AllappsIcon;->mShowHotseatTitle:Z

    if-eqz v4, :cond_2

    .line 96
    const v4, 0x7f0e0005

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 97
    const-string v4, "AllappsIcon"

    const-string v5, "setTrashIcon: mShowHotseattitle is true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    if-eqz p1, :cond_5

    .line 100
    iget-object v4, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBitmapHover:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllappsIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 101
    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    const-string v4, "AllappsIcon"

    const-string v5, "setTrashIcon: hovering is true , mTrashBitmapHover set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0           #bottomBar:I
    .end local v2           #isLandWVGA:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    .restart local v2       #isLandWVGA:Z
    :cond_4
    const v0, 0x7f02000b

    goto :goto_2

    .line 104
    .restart local v0       #bottomBar:I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/AllappsIcon;->mTrashBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllappsIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 105
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    const-string v4, "AllappsIcon"

    const-string v5, "setTrashIcon: mTrashBitmap set "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsetTrashIcon()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 112
    const-string v7, "AllappsIcon"

    const-string v8, "unsetTrashIcon is called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    .local v1, context:Landroid/content/Context;
    iget-boolean v7, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    if-nez v7, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/AllappsIcon;->mTrashIconSet:Z

    .line 117
    iget-object v7, p0, Lcom/android/launcher2/AllappsIcon;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 118
    iget-boolean v7, p0, Lcom/android/launcher2/AllappsIcon;->mShowHotseatTitle:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher2/AllappsIcon;->mIsAnimating:Z

    if-nez v7, :cond_2

    .line 119
    const v7, 0x7f0e002a

    invoke-virtual {p0, v7}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 121
    :cond_2
    const/4 v2, 0x0

    .line 123
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    :goto_1
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {p0, v9, v2, v9, v9}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    const-string v7, "AllappsIcon"

    const-string v8, "unsetTrashIcon : setCompoundDrawablesWithIntrinsicBounds(d != null) is called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/AllappsIcon;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    .line 139
    .local v4, hotseat:Lcom/android/launcher2/Hotseat;
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x140

    if-gt v7, v8, :cond_3

    const/4 v5, 0x1

    .line 140
    .local v5, isLandWVGA:Z
    :cond_3
    if-eqz v5, :cond_5

    const v0, 0x7f02000c

    .line 141
    .local v0, bottomBar:I
    :goto_3
    if-eqz v4, :cond_0

    .line 142
    const v7, 0x7f070040

    invoke-virtual {v4, v7}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 144
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 124
    .end local v0           #bottomBar:I
    .end local v4           #hotseat:Lcom/android/launcher2/Hotseat;
    .end local v5           #isLandWVGA:Z
    .end local v6           #v:Landroid/view/View;
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/NoSuchMethodError;
    const-string v7, "AllappsIcon"

    const-string v8, "Cound not call getCSCPackageItemIcon."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v3           #e:Ljava/lang/NoSuchMethodError;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v9, v7, v9, v9}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    const-string v7, "AllappsIcon"

    const-string v8, "unsetTrashIcon : setCompoundDrawablesWithIntrinsicBounds(all_apps_button_icon) is called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 140
    .restart local v4       #hotseat:Lcom/android/launcher2/Hotseat;
    .restart local v5       #isLandWVGA:Z
    :cond_5
    const v0, 0x7f02000b

    goto :goto_3
.end method
