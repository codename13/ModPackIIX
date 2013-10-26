.class Lcom/android/launcher2/ShadowBuilder;
.super Lcom/android/launcher2/UpdateableShadowBuilder;
.source "ShadowBuilder.java"


# static fields
.field private static SCALE_FACTOR:F


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mDrawGlow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mTouch:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const v0, 0x3f666666

    sput v0, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 19
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 21
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "v"
    .parameter "b"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 26
    iput-object p2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 28
    return-void
.end method

.method private init(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "v"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 32
    .local v1, scale:F
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 33
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 34
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 35
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 39
    instance-of v2, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 40
    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getLastTouchPoint()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 42
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v6

    .line 44
    iput v1, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 68
    :goto_1
    instance-of v2, p1, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/launcher2/SamsungAppWidgetView;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    iput-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->resetPaint()V

    .line 74
    return-void

    .line 46
    :cond_3
    instance-of v2, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 47
    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLastTouchPoint()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 48
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v6

    .line 49
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v7

    .line 52
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v6

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v2, v6

    .line 53
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v7

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v2, v7

    goto :goto_1

    .line 55
    :cond_4
    instance-of v2, p1, Lcom/android/launcher2/SamsungAppWidgetView;

    if-eqz v2, :cond_5

    move-object v2, p1

    .line 56
    check-cast v2, Lcom/android/launcher2/SamsungAppWidgetView;

    invoke-virtual {v2}, Lcom/android/launcher2/SamsungAppWidgetView;->getLastTouchPoint()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 57
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v6

    .line 58
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v2, v7

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v6

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v2, v6

    .line 62
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v3, v2, v7

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v2, v7

    goto/16 :goto_1

    .line 65
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v7

    iput-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    goto/16 :goto_1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTouchOffset()[I
    .locals 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 146
    .local v0, r:[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 147
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 148
    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v8, v9

    .line 94
    .local v8, width:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 96
    .local v3, height:F
    const/4 v4, 0x0

    .line 97
    .local v4, left:F
    const/4 v7, 0x0

    .line 99
    .local v7, top:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    const-string v9, "ShadowBuilder"

    const-string v10, "Bitmap is recycled; draw ignored"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v9, :cond_2

    const/high16 v5, 0x4080

    .line 106
    .local v5, p:F
    :goto_1
    sget v9, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    sget v10, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    add-float v12, v4, v5

    add-float v13, v7, v5

    add-float v14, v4, v8

    sub-float/2addr v14, v5

    add-float v15, v7, v3

    sub-float/2addr v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v9, :cond_0

    .line 111
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 113
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    float-to-int v9, v8

    float-to-int v10, v3

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 117
    .local v2, d:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 118
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    sub-float v12, v8, v5

    sub-float v13, v3, v5

    invoke-direct {v11, v5, v5, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 120
    sget-object v9, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v2, v1, v10, v11}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 122
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #d:Landroid/graphics/Bitmap;
    .end local v5           #p:F
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .parameter "size"
    .parameter "touch"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 86
    .local v1, width:I
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 87
    .local v0, height:I
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 88
    iget-object v2, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/launcher2/ShadowBuilder;->SCALE_FACTOR:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 89
    return-void
.end method

.method public resetPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x808081

    const/high16 v3, -0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method
