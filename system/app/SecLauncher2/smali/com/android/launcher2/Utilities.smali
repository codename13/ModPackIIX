.class final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DEBUG_VIEWS_AND_SIZES:Z = false

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    .line 59
    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 60
    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 74
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    return-void

    .line 77
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 313
    const-string v2, "gsm.sim.screenEvent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    .line 315
    .local v0, catEventIdleScreen:Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    const-string v2, "Launcher.Utilities"

    const-string v3, "broadcastStkIntent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0           #catEventIdleScreen:Lcom/android/internal/telephony/cat/CatEventDownload;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v2, 0x4000

    .line 366
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 367
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 368
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 369
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 370
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v3, 0x4000

    .line 373
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 374
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 375
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 376
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 377
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "icon"
    .parameter "context"

    .prologue
    const/high16 v10, 0x3f00

    .line 86
    sget-object v7, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v7

    .line 87
    :try_start_0
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    .line 88
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 91
    .local v5, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 92
    .local v4, sourceHeight:I
    const/high16 v3, 0x3f80

    .line 93
    .local v3, scale:F
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v4, v6, :cond_2

    .line 95
    :cond_1
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 96
    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 97
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 102
    :cond_2
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v0, v6, v5

    .line 103
    .local v0, dx:I
    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v1, v6, v4

    .line 104
    .local v1, dy:I
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    .line 105
    :cond_3
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 108
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v0

    mul-float/2addr v8, v10

    int-to-float v9, v1

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 111
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    move-object p0, v2

    .line 113
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    :cond_4
    monitor-exit v7

    .line 116
    return-object p0

    .line 115
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #scale:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "icon"
    .parameter "context"

    .prologue
    const/high16 v14, 0x3f00

    .line 123
    sget-object v10, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 124
    :try_start_0
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_0

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 127
    :cond_0
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_4

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v5, v0

    .line 129
    .local v5, painter:Landroid/graphics/drawable/PaintDrawable;
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 130
    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 138
    .end local v5           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    sget-object v9, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 139
    const/high16 v6, 0x3f80

    .line 140
    .local v6, scale:F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 141
    .local v8, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 142
    .local v7, sourceHeight:I
    if-lez v8, :cond_2

    if-gtz v7, :cond_5

    .line 143
    :cond_2
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 144
    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 145
    const/4 v9, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v13, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {p0, v9, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    :cond_3
    :goto_1
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v3, v9, v8

    .line 160
    .local v3, dx:I
    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v4, v9, v7

    .line 162
    .local v4, dy:I
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v11, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 165
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v11, v3

    mul-float/2addr v11, v14

    int-to-float v12, v4

    mul-float/2addr v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 168
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    sget-object v9, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    monitor-exit v10

    return-object v1

    .line 131
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #dx:I
    .end local v4           #dy:I
    .end local v6           #scale:F
    .end local v7           #sourceHeight:I
    .end local v8           #sourceWidth:I
    :cond_4
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_1

    .line 133
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 134
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_1

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 178
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 148
    .restart local v6       #scale:F
    .restart local v7       #sourceHeight:I
    .restart local v8       #sourceWidth:I
    :cond_5
    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {p0, v9, v11, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v8, v9, :cond_6

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v7, v9, :cond_3

    .line 151
    :cond_6
    sget v9, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v9, v9

    int-to-float v11, v8

    div-float/2addr v9, v11

    sget v11, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v11, v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 152
    int-to-float v9, v8

    mul-float/2addr v9, v6

    float-to-int v8, v9

    .line 153
    int-to-float v9, v7

    mul-float/2addr v9, v6

    float-to-int v7, v9

    goto :goto_1
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 229
    sget-object v3, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    .line 230
    :try_start_0
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 231
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    .local v1, disabled:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 236
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    monitor-exit v3

    return-object v1

    .line 243
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #disabled:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "pressed"
    .parameter "src"

    .prologue
    .line 183
    sget-object v5, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 184
    :try_start_0
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 188
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 191
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 193
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 194
    .local v3, xy:[I
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 197
    .local v1, px:F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 198
    .local v2, py:F
    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    monitor-exit v5

    .line 203
    return-void

    .line 198
    :cond_1
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static drawVerticalLine(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "view"
    .parameter "canvas"
    .parameter "xOffset"

    .prologue
    .line 380
    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 382
    .local v6, sx:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 383
    .local v7, sy:I
    add-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v4, v0

    sget-object v5, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 384
    return-void
.end method

.method private static ensureBlackPaint()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 343
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    :cond_0
    return-void
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5
    .parameter "view"

    .prologue
    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 331
    .local v1, id:Ljava/lang/Integer;
    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    .line 332
    .local v0, bgPaint:Landroid/graphics/Paint;
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    .end local v0           #bgPaint:Landroid/graphics/Paint;
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 334
    .restart local v0       #bgPaint:Landroid/graphics/Paint;
    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    return-object v0
.end method

.method static generateRandomId()I
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor(III)I
    .locals 4
    .parameter "alpha"
    .parameter "base"
    .parameter "randomizer"

    .prologue
    .line 323
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    .line 324
    .local v2, red:I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    .line 325
    .local v1, green:I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    .line 326
    .local v0, blue:I
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 5
    .parameter "context"
    .parameter "size"

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 404
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 405
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 407
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4240

    mul-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v2, v3

    .line 409
    .local v2, systemBarSize:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    iget v3, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 426
    .end local v2           #systemBarSize:I
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v2       #systemBarSize:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 418
    :pswitch_1
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4228

    mul-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v2, v3

    .line 419
    iget v3, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 248
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 249
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 251
    .local v1, density:F
    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 253
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 254
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 256
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 259
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 260
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 261
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 262
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 388
    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 363
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 289
    const/high16 v6, 0x3f80

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 290
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    .line 293
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 294
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"
    .parameter "multiplyColor"

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 300
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 301
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 304
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 305
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 307
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 217
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 218
    :try_start_0
    sget v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 219
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-eq v0, v2, :cond_2

    .line 222
    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 224
    :cond_2
    monitor-exit v1

    .line 225
    return-object p0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 267
    move v1, p0

    .line 268
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 269
    const/high16 v0, 0x800

    .line 270
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 271
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 274
    or-int/2addr p0, v0

    .line 275
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 278
    if-eq p0, v1, :cond_2

    .line 279
    shl-int/lit8 p0, p0, 0x1

    .line 281
    :cond_2
    return p0
.end method
