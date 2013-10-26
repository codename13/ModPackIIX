.class public Lcom/android/launcher2/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field static final ALLAPPS_CLING_CHECKBOX_KEY:Ljava/lang/String; = "cling.allapps.checked"

.field static final ALLAPPS_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.allapps.dismissed"

.field private static ALLAPPS_LANDSCAPE:Ljava/lang/String; = null

.field private static ALLAPPS_PORTRAIT:Ljava/lang/String; = null

.field static final DISMISS_CLING_DURATION:I = 0xfa

.field private static FOLDER_LANDSCAPE:Ljava/lang/String; = null

.field private static FOLDER_PORTRAIT:Ljava/lang/String; = null

.field static final SHOW_CLING_DURATION:I = 0x226

.field static final WIDGET_CLING_CHECKBOX_KEY:Ljava/lang/String; = "cling.widget.checked"

.field static final WIDGET_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.widget.dismissed"

.field static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.dismissed"

.field static final WORKSPACE_CLING_PAGE1_CHECKBOX_KEY:Ljava/lang/String; = "cling.workspace.page1.checked"

.field static final WORKSPACE_CLING_PAGE1_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.page1.dismissed"

.field static final WORKSPACE_CLING_PAGE2_CHECKBOX_KEY:Ljava/lang/String; = "cling.workspace.page2.checked"

.field static final WORKSPACE_CLING_PAGE2_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.page2.dismissed"

.field static final WORKSPACE_CLING_PAGE3_CHECKBOX_KEY:Ljava/lang/String; = "cling.workspace.page3.checked"

.field static final WORKSPACE_CLING_PAGE3_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.page3.dismissed"

.field private static WORKSPACE_LANDSCAPE:Ljava/lang/String;

.field private static WORKSPACE_PORTRAIT:Ljava/lang/String;


# instance fields
.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mFragment:Landroid/app/Fragment;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mHotseatAllAppsDeltaX:I

.field private mHotseatAllAppsDeltaY:I

.field private mIsInitialized:Z

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "workspace_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    .line 59
    const-string v0, "workspace_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 60
    const-string v0, "all_apps_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    .line 61
    const-string v0, "all_apps_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 62
    const-string v0, "folder_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    .line 63
    const-string v0, "folder_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->Cling:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private getPunchThroughPosition()[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaX:I

    sub-int/2addr v1, v2

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    aput v1, v0, v3

    iget v1, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaY:I

    aput v1, v0, v4

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    goto :goto_0

    .line 154
    :cond_3
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 141
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 143
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-eqz v11, :cond_6

    .line 188
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    .local v7, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v2, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_1
    const/4 v3, -0x1

    .line 220
    .local v3, cx:I
    const/4 v4, -0x1

    .line 221
    .local v4, cy:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 222
    .local v10, scale:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v6, v11

    .line 223
    .local v6, dw:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v5, v11

    .line 226
    .local v5, dh:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getPunchThroughPosition()[I

    move-result-object v9

    .line 227
    .local v9, pos:[I
    const/4 v11, 0x0

    aget v3, v9, v11

    .line 228
    const/4 v11, 0x1

    aget v4, v9, v11

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 230
    const/4 v11, -0x1

    if-le v3, v11, :cond_2

    const/4 v11, -0x1

    if-le v4, v11, :cond_2

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v12, v6, 0x2

    sub-int v12, v3, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v4, v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v14, v3

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_4

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020033

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    div-int/lit8 v8, v11, 0x4

    .line 244
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    add-int v12, v3, v8

    add-int v13, v4, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v14, v3

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v4

    add-int/2addr v15, v8

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    .end local v8           #offset:I
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #cx:I
    .end local v4           #cy:I
    .end local v5           #dh:I
    .end local v6           #dw:I
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #pos:[I
    .end local v10           #scale:F
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 257
    return-void
.end method

.method init(Landroid/app/Fragment;[I)V
    .locals 15
    .parameter "fragment"
    .parameter "positionData"

    .prologue
    .line 98
    iget-boolean v12, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-nez v12, :cond_0

    .line 99
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/launcher2/Cling;->mFragment:Landroid/app/Fragment;

    .line 100
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 103
    .local v9, r:Landroid/content/res/Resources;
    const v12, 0x7f02001d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 104
    const v12, 0x7f0c000b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    .line 106
    const v12, 0x7f0c0002

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    .line 107
    iget v12, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    int-to-float v12, v12

    const/high16 v13, 0x3f80

    mul-float/2addr v12, v13

    iput v12, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    .line 108
    const v12, 0x7f0c0024

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    .line 110
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 111
    .local v6, config:Landroid/content/res/Configuration;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v1, v12, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .local v1, DpScale:F
    iget v12, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v11, v12

    .line 113
    .local v11, screenWidth:I
    iget v12, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v10, v12

    .line 114
    .local v10, screenHeight:I
    iget-object v12, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v13, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 115
    const v12, 0x7f0c0030

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaY:I

    .line 116
    const v12, 0x7f0c002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 117
    .local v4, cellWidth:I
    const v12, 0x7f0c0031

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, cellGap:I
    const v12, 0x7f0a002e

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 119
    .local v5, cells:I
    add-int v12, v4, v2

    mul-int/2addr v12, v5

    sub-int v13, v11, v12

    if-lez v5, :cond_1

    move v12, v2

    :goto_0
    sub-int v7, v13, v12

    .line 120
    .local v7, marginX:I
    add-int v12, v7, v4

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaX:I

    .line 129
    .end local v4           #cellWidth:I
    .end local v7           #marginX:I
    :goto_1
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 130
    iget-object v12, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    iget-object v12, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v13, 0xffffff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v12, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 136
    .end local v1           #DpScale:F
    .end local v2           #cellGap:I
    .end local v5           #cells:I
    .end local v6           #config:Landroid/content/res/Configuration;
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #screenHeight:I
    .end local v11           #screenWidth:I
    :cond_0
    return-void

    .line 119
    .restart local v1       #DpScale:F
    .restart local v2       #cellGap:I
    .restart local v4       #cellWidth:I
    .restart local v5       #cells:I
    .restart local v6       #config:Landroid/content/res/Configuration;
    .restart local v9       #r:Landroid/content/res/Resources;
    .restart local v10       #screenHeight:I
    .restart local v11       #screenWidth:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 122
    .end local v2           #cellGap:I
    .end local v4           #cellWidth:I
    .end local v5           #cells:I
    :cond_2
    const v12, 0x7f0c002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaX:I

    .line 123
    const v12, 0x7f0c0030

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 124
    .local v3, cellHeight:I
    const v12, 0x7f0c0032

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 125
    .restart local v2       #cellGap:I
    const v12, 0x7f0a002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 126
    .restart local v5       #cells:I
    add-int v12, v3, v2

    mul-int/2addr v12, v5

    sub-int v13, v10, v12

    if-lez v5, :cond_3

    move v12, v2

    :goto_2
    sub-int v8, v13, v12

    .line 127
    .local v8, marginY:I
    add-int v12, v8, v3

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/android/launcher2/Cling;->mHotseatAllAppsDeltaY:I

    goto :goto_1

    .line 126
    .end local v8           #marginY:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/launcher2/HomeFragment;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/launcher2/Cling;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 173
    .local v0, f:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 175
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x0

    goto :goto_0
.end method
