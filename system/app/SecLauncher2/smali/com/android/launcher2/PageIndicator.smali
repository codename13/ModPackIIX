.class public Lcom/android/launcher2/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicator$Page;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final DRAW_STATE_LARGE:I = 0x3

.field private static final DRAW_STATE_MIDDLE:I = 0x2

.field private static final DRAW_STATE_NONE:I = 0x0

.field private static final DRAW_STATE_SMALL:I = 0x1

.field public static final INVALID_AREA:I = -0x1

.field public static final LEFT_MORE_AREA:I = -0x2

.field private static final PANEL_TEXT_PAINT:Landroid/graphics/Paint; = null

.field public static final RIGHT_MORE_AREA:I = -0x3

.field private static final rate:[F


# instance fields
.field private mCPDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCurrentPage:I

.field private mDisplayPageCount:I

.field private mEnableTouch:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mFastScrollNumBgTop:I

.field private mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTextIndex:I

.field private mGap:I

.field private mGrowBy:F

.field private mIsDraw:Z

.field private mIsFastScrolling:Z

.field private mIsHiding:Z

.field private mIsVisibleLeftMore:Z

.field private mIsVisibleRightMore:Z

.field private mLeft:I

.field private final mMaxVisiblePages:I

.field private mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreGap:I

.field private mPage:[Lcom/android/launcher2/PageIndicator$Page;

.field private mPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPageNumberBg:Landroid/graphics/drawable/Drawable;

.field private mPrePageNumber:I

.field private mScrollBarThumbWidth:I

.field private mScrollBarWidth:I

.field private mScrollPosition:F

.field private mTop:I

.field private mTotalPageCount:I

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    .line 84
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 8
    .parameter "r"
    .parameter "maxVisiblePages"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 46
    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mCPDrawable:[Landroid/graphics/drawable/Drawable;

    .line 72
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0xc8

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 76
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 77
    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 78
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 79
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    .line 312
    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    .line 412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    .line 90
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 92
    iput-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 94
    iput-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 97
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PageIndicator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return v0
.end method

.method private drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "context"
    .parameter "canvas"
    .parameter "number"
    .parameter "defaultSurface"
    .parameter "paint"

    .prologue
    .line 316
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 317
    .local v2, width:I
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 318
    .local v0, height:I
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {p2, v3, v4, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    if-eq v3, p3, :cond_0

    .line 322
    iput p3, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    move-object v3, p1

    .line 323
    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, info:Ljava/lang/String;
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 329
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;)Z
    .locals 24
    .parameter "canvas"
    .parameter "pagedView"

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-nez v2, :cond_2

    :cond_0
    const/16 v22, 0x0

    .line 309
    :cond_1
    :goto_0
    return v22

    .line 204
    :cond_2
    const/16 v22, 0x0

    .line 205
    .local v22, redraw:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v21, v0

    .line 206
    .local v21, pageCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move/from16 v16, v0

    .line 207
    .local v16, gap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    move/from16 v19, v0

    .line 208
    .local v19, moreGap:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v20, v2, v19

    .line 213
    .local v20, move:I
    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    .end local v20           #move:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 219
    sub-int v2, v19, v16

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v18

    .line 224
    .local v18, modeFactor:F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    .line 225
    const/high16 v2, 0x437f

    mul-float v2, v2, v18

    float-to-int v10, v2

    .line 226
    .local v10, alpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    sget-object v2, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 232
    const/4 v9, 0x3

    .line 233
    .local v9, a:I
    const/4 v2, 0x0

    const/high16 v3, 0x4040

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 236
    .restart local v20       #move:I
    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 238
    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    const/4 v2, 0x0

    const/high16 v3, -0x3fc0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-nez v2, :cond_5

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 243
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x2

    .line 244
    .local v14, dx:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v15, v2, -0x46

    .line 245
    .local v15, dy:I
    int-to-float v2, v14

    int-to-float v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 248
    neg-int v2, v14

    int-to-float v2, v2

    neg-int v3, v15

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    .end local v9           #a:I
    .end local v10           #alpha:I
    .end local v11           #bounds:Landroid/graphics/Rect;
    .end local v14           #dx:I
    .end local v15           #dy:I
    .end local v20           #move:I
    :cond_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_b

    .line 253
    const/16 v23, 0x0

    .line 255
    .local v23, totalCPcount:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v12

    .line 257
    .local v12, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_6

    .line 258
    invoke-virtual {v12}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v23

    .line 261
    :cond_6
    const/high16 v2, 0x3f80

    cmpg-float v2, v18, v2

    if-gez v2, :cond_d

    .line 262
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    sub-int v2, v21, v23

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int v3, v3, v17

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 264
    const/16 v22, 0x1

    .line 265
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 268
    :cond_8
    sub-int v17, v21, v23

    :goto_2
    if-lez v23, :cond_d

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 269
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v13

    .line 271
    .local v13, cpType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mCPDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v2, v13

    .line 272
    .local v8, CPindicator:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int v3, v3, v17

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v8}, Lcom/android/launcher2/PageIndicator$Page;->drawContextualPageIndicator(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 274
    const/16 v22, 0x1

    .line 275
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mCPDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v13

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 281
    .end local v8           #CPindicator:Landroid/graphics/drawable/Drawable;
    .end local v12           #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    .end local v13           #cpType:I
    .end local v17           #i:I
    .end local v23           #totalCPcount:I
    :cond_b
    const/high16 v2, 0x3f80

    cmpg-float v2, v18, v2

    if-gez v2, :cond_d

    .line 282
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int v3, v3, v17

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 284
    const/16 v22, 0x1

    .line 285
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 289
    .end local v17           #i:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 292
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-eqz v2, :cond_e

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_f

    const/high16 v2, 0x3f80

    cmpg-float v2, v18, v2

    if-gez v2, :cond_f

    .line 301
    const/16 v22, 0x1

    .line 304
    :cond_f
    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v2, :cond_1

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 307
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method enableLeftMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    .line 333
    return-void
.end method

.method enableRightMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    .line 337
    return-void
.end method

.method public enterFastScroll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 130
    return-void
.end method

.method public exitFastScroll()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 136
    return-void
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method getPageTouchArea(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, -0x1

    .line 414
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    if-nez v9, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v8

    .line 415
    :cond_1
    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 416
    .local v5, pageCount:I
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 417
    .local v0, gap:I
    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 418
    .local v4, moreGap:I
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 419
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    .line 421
    .local v6, touchArea:I
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 422
    .local v7, width:I
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 424
    .local v1, height:I
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/lit8 v10, v10, -0xa

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 425
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v10, v10, 0xa

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 427
    iget-boolean v9, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v9, :cond_2

    .line 428
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v3, v10

    sub-int/2addr v10, v4

    sub-int/2addr v10, v6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 429
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 431
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 432
    const/4 v8, -0x2

    goto :goto_0

    .line 436
    :cond_2
    iget-boolean v9, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v9, :cond_3

    .line 437
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    add-int/lit8 v11, v11, -0x2

    mul-int/2addr v11, v0

    add-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 438
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 439
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 440
    const/4 v8, -0x3

    goto :goto_0

    .line 444
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 446
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    add-int v10, v7, v0

    mul-int/2addr v10, v2

    add-int/2addr v10, v3

    sub-int/2addr v10, v6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 447
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 449
    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 450
    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v8, v2

    goto/16 :goto_0

    .line 444
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public handleOrientationChange(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 577
    return-void
.end method

.method public hide(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    .line 193
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 194
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 196
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->endAnimation()V

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 199
    return-void
.end method

.method public isFastScrolling()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public setCPDrawable([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mCPDrawable:[Landroid/graphics/drawable/Drawable;

    .line 157
    return-void
.end method

.method setCurrentPage(IZ)V
    .locals 7
    .parameter "current"
    .parameter "useLargeDrawablesOnly"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 370
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 371
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v3, :cond_1

    .line 406
    :cond_0
    return-void

    .line 372
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 375
    .local v1, pageCount:I
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ne v3, v1, :cond_2

    .line 376
    const/4 v2, 0x0

    .line 387
    .local v2, startIdx:I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicator;->setFirstTextNum(I)V

    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 389
    add-int v3, v0, v2

    if-ne v3, p1, :cond_7

    .line 390
    if-eqz p2, :cond_5

    .line 391
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 388
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    .end local v0           #i:I
    .end local v2           #startIdx:I
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_3

    .line 379
    const/4 v2, 0x0

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 380
    .end local v2           #startIdx:I
    :cond_3
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ge v3, v4, :cond_4

    .line 381
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 383
    .end local v2           #startIdx:I
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    sub-int v2, v3, v4

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 393
    .restart local v0       #i:I
    :cond_5
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_6

    .line 394
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2

    .line 396
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2

    .line 399
    :cond_7
    add-int v3, v0, v2

    add-int/lit8 v4, p1, -0x1

    if-eq v3, v4, :cond_8

    add-int v3, v0, v2

    add-int/lit8 v4, p1, 0x1

    if-ne v3, v4, :cond_9

    .line 401
    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2

    .line 403
    :cond_9
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2
.end method

.method setFirstTextNum(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 409
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    .line 410
    return-void
.end method

.method setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 340
    invoke-virtual {p0, p1, p1}, Lcom/android/launcher2/PageIndicator;->setGap(II)V

    .line 341
    return-void
.end method

.method setGap(II)V
    .locals 0
    .parameter "gap"
    .parameter "moregap"

    .prologue
    .line 344
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 345
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 346
    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    return-void
.end method

.method setOffset(II)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 349
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    .line 350
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 351
    return-void
.end method

.method setPageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 354
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 355
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-le p1, v1, :cond_0

    .line 356
    iget p1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 359
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-eq v1, p1, :cond_1

    .line 360
    new-array v1, p1, [Lcom/android/launcher2/PageIndicator$Page;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    aput-object v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0           #i:I
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 367
    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 153
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 148
    return-void
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 105
    const v1, 0x7f0200b7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    const v1, 0x7f0200b6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    const v1, 0x7f0200b8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    .line 109
    sget-object v1, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const v2, 0x7f0c001b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    const v1, 0x7f0c001a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    .line 115
    const v1, 0x7f0c001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    .local v0, size:I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const v1, 0x7f0c001d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 184
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "forced"
    .parameter "animated"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method public updatePositions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 161
    .local v1, pageCount:I
    const/4 v0, 0x0

    .line 162
    .local v0, left:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v4, v5

    mul-int v2, v4, v1

    .line 163
    .local v2, right:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4, v6, v6, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    mul-int/lit8 v3, v4, 0x3

    .line 167
    .local v3, thumbRight:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    add-int/lit8 v4, v2, 0x0

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 171
    add-int/lit8 v4, v3, 0x0

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    .line 172
    return-void
.end method
