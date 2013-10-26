.class public Lcom/android/launcher2/DeleteIcon;
.super Landroid/widget/ImageView;
.source "DeleteIcon.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final kLidUpHeight:I

.field private mAngleDirection:F

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    .line 25
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 26
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    .line 27
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    .line 31
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->kLidUpHeight:I

    .line 208
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    .line 209
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    .line 35
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    .line 25
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 26
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    .line 27
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    .line 31
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->kLidUpHeight:I

    .line 208
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    .line 209
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    .line 25
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 26
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    .line 27
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    .line 31
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 182
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->kLidUpHeight:I

    .line 208
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    .line 209
    iput v3, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    .line 45
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->init()V

    .line 46
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 7
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "bounds"
    .parameter "alpha"

    .prologue
    const/high16 v6, 0x4000

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 108
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 109
    .local v1, dy:I
    iget-object v4, p0, Lcom/android/launcher2/DeleteIcon;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f

    mul-float/2addr v5, p4

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget v4, p3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v2, v4, v5

    .line 116
    .local v2, x:I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v3, v4, v5

    .line 117
    .local v3, y:I
    int-to-float v4, v2

    int-to-float v5, v3

    iget-object v6, p0, Lcom/android/launcher2/DeleteIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 6

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/high16 v1, 0x4040

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 133
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 54
    const v2, 0x7f020061

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCan:Landroid/graphics/Bitmap;

    .line 57
    const v2, 0x7f02005e

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 60
    const v2, 0x7f020060

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteIcon;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 63
    const v2, 0x7f020062

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 65
    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimator(IJ)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 155
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 157
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 158
    iput-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    .line 159
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 69
    instance-of v3, p0, Lcom/android/launcher2/DeleteDropTarget;

    if-eqz v3, :cond_1

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 81
    .local v2, r:Landroid/graphics/Rect;
    iget-boolean v3, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/launcher2/DeleteIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 83
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 86
    .local v0, lidCenterX:I
    iget-object v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v3, 0x5

    .line 92
    .local v1, lidCenterY:I
    iget v3, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 93
    iget-object v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/launcher2/DeleteIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 97
    .end local v0           #lidCenterX:I
    .end local v1           #lidCenterY:I
    :cond_3
    iget v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCan:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/launcher2/DeleteIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 100
    :cond_4
    iget v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/launcher2/DeleteIcon;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_0
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    return-void
.end method

.method public getTextWidth()I
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 122
    .local v0, width:I
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 263
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 259
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 255
    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 143
    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanAlpha:F

    .line 139
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 238
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteIcon;->setTrashCanAlpha(F)V

    .line 239
    iput p1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->invalidate()V

    .line 241
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x3f80

    .line 194
    const/high16 v0, 0x4080

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->invalidate()V

    .line 197
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_0

    .line 200
    const v0, 0x7f050014

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/DeleteIcon;->startAnimator(IJ)V

    .line 202
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 9
    .parameter "value"

    .prologue
    const/high16 v8, 0x4100

    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 212
    const/high16 v2, 0x4100

    .line 213
    .local v2, kHalfCycles:F
    mul-float/2addr p1, v8

    .line 214
    const/high16 v3, 0x4140

    .line 215
    .local v3, kShakeMaxAngle:F
    iget v0, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 216
    .local v0, angle:F
    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 217
    .local v1, dv:F
    iput p1, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    .line 218
    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 219
    cmpl-float v4, v0, v5

    if-lez v4, :cond_2

    .line 220
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 221
    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    .line 226
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->invalidate()V

    .line 228
    cmpl-float v4, p1, v8

    if-ltz v4, :cond_1

    .line 229
    const v4, 0x7f050012

    const-wide/16 v5, 0x3c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/launcher2/DeleteIcon;->startAnimator(IJ)V

    .line 231
    :cond_1
    return-void

    .line 222
    :cond_2
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 223
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 224
    iget v4, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 184
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mLidOffsetY:I

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->invalidate()V

    .line 186
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mPreviousLidShakeValue:F

    .line 188
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mAngleDirection:F

    .line 189
    const v0, 0x7f050013

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/DeleteIcon;->startAnimator(IJ)V

    .line 191
    :cond_0
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DeleteIcon;->setTrashCanAlpha(F)V

    .line 246
    sub-float v0, v1, p1

    iput v0, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteIcon;->invalidate()V

    .line 248
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsAnimating:Z

    .line 250
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTrashCanShakeAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lcom/android/launcher2/DeleteIcon;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteIcon;->setTrashCanAlpha(F)V

    .line 164
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mTrashCanFillAlpha:F

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    .line 166
    iput v1, p0, Lcom/android/launcher2/DeleteIcon;->mLidAngle:F

    .line 167
    const v0, 0x7f050014

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/DeleteIcon;->startAnimator(IJ)V

    .line 169
    :cond_0
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/launcher2/DeleteIcon;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteIcon;->mIsTrashCanShakeMode:Z

    .line 177
    return-void
.end method
