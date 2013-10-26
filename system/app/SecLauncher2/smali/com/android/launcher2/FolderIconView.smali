.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;


# static fields
.field private static FOLDER_ICON_BOTTOM_MARGIN:F = 0.0f

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas; = null

.field private static FOLDER_ICON_COL_SIZE:I = 0x0

.field private static FOLDER_ICON_LEFT_MARGIN:F = 0.0f

.field private static final FOLDER_ICON_MATRIX:Landroid/graphics/Matrix; = null

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint; = null

.field private static FOLDER_ICON_ROW_SIZE:I = 0x0

.field private static FOLDER_ICON_TOP_MARGIN:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "FolderIconView"

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private static sInitStaticVar:Z

.field private static final sTmpPaint:Landroid/graphics/Paint;


# instance fields
.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field mIgnoreSetAlphaOnDragExit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    sput-boolean v3, Lcom/android/launcher2/FolderIconView;->sInitStaticVar:Z

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconView;->sTmpPaint:Landroid/graphics/Paint;

    .line 62
    sget-object v0, Lcom/android/launcher2/FolderIconView;->sTmpPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x666667

    invoke-direct {v1, v2, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 243
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    .line 244
    sget-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    sget-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 246
    sget-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 247
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_MATRIX:Landroid/graphics/Matrix;

    .line 250
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 78
    sget-boolean v0, Lcom/android/launcher2/FolderIconView;->sInitStaticVar:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/android/launcher2/FolderIconView;->initStatics(Landroid/content/Context;)V

    .line 81
    :cond_0
    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 4
    .parameter "dragState"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, accept:Z
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 106
    .local v1, item:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_0

    .line 107
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 108
    .local v2, itemType:Lcom/android/launcher2/BaseItem$Type;
    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 113
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #itemType:Lcom/android/launcher2/BaseItem$Type;
    :cond_0
    return v0
.end method

.method private static createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "folderIcon"
    .parameter "info"

    .prologue
    .line 281
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v16

    .line 284
    .local v16, itemCount:I
    if-nez v16, :cond_0

    .line 337
    .end local p0
    :goto_0
    return-object p0

    .line 286
    .restart local p0
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 288
    .local v11, b:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 293
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_LEFT_MARGIN:F

    sget v4, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    const/4 v13, 0x0

    .line 297
    .local v13, deltaX:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_LEFT_MARGIN:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float v10, v2, v3

    .line 298
    .local v10, availableWidth:F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_TOP_MARGIN:F

    sget v4, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sub-float v9, v2, v3

    .line 302
    .local v9, availableHeight:F
    sget v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_ROW_SIZE:I

    int-to-float v2, v2

    div-float v12, v10, v2

    .line 303
    .local v12, colWidth:F
    sget v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_COL_SIZE:I

    int-to-float v2, v2

    div-float v19, v9, v2

    .line 305
    .local v19, rowHeight:F
    sget v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_ROW_SIZE:I

    sget v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_COL_SIZE:I

    mul-int v17, v2, v3

    .line 306
    .local v17, max_app_prev_count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 307
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v15

    .line 308
    .local v15, item:Lcom/android/launcher2/BaseItem;
    iget-object v2, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 310
    :cond_1
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget-object v2, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v12, v2

    iget-object v3, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v19, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v20, v0

    .line 319
    .local v20, scale:F
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 320
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_MATRIX:Landroid/graphics/Matrix;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 321
    iget-object v2, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v15, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_MATRIX:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 322
    .local v18, mini:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_MATRIX:Landroid/graphics/Matrix;

    sget-object v4, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 324
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 326
    add-int/lit8 v2, v14, 0x1

    sget v3, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_ROW_SIZE:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 327
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    neg-int v3, v13

    int-to-float v3, v3

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    const/4 v13, 0x0

    goto :goto_2

    .line 330
    :cond_2
    int-to-float v2, v13

    add-float/2addr v2, v12

    float-to-int v13, v2

    .line 331
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 335
    .end local v15           #item:Lcom/android/launcher2/BaseItem;
    .end local v18           #mini:Landroid/graphics/Bitmap;
    .end local v20           #scale:F
    :cond_3
    sget-object v2, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 p0, v11

    .line 337
    goto/16 :goto_0
.end method

.method public static createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "folderIcon"
    .parameter "info"
    .parameter "c"

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/launcher2/FolderIconView;->sInitStaticVar:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 263
    invoke-static {p2}, Lcom/android/launcher2/FolderIconView;->initStatics(Landroid/content/Context;)V

    .line 265
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher2/FolderIconView;->createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_COL_SIZE:I

    .line 121
    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_ROW_SIZE:I

    .line 122
    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_TOP_MARGIN:F

    .line 123
    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_LEFT_MARGIN:F

    .line 124
    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/launcher2/FolderIconView;->FOLDER_ICON_BOTTOM_MARGIN:F

    .line 125
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/FolderIconView;->sInitStaticVar:Z

    .line 126
    return-void
.end method

.method private onDragEnter()V
    .locals 1

    .prologue
    .line 215
    const/high16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    .line 216
    return-void
.end method

.method private onDragExit()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 219
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    .line 222
    :cond_0
    return-void
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 269
    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 270
    return-void
.end method


# virtual methods
.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 2
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-interface {v1, v0}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 137
    :cond_0
    return-void
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 90
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 92
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 93
    check-cast v1, Lcom/android/launcher2/FolderItem;

    iput-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    .line 94
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-static {v0, v1}, Lcom/android/launcher2/FolderIconView;->createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-super {p0, v1, v0, p1}, Lcom/android/launcher2/AppIconView;->applyFromItem(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher2/BaseItem;)V

    .line 98
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong apply called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 1
    .parameter "item"

    .prologue
    .line 208
    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 209
    .end local p1
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 398
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 405
    .local v2, tempCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    invoke-super {p0, v2}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    sget-object v3, Lcom/android/launcher2/FolderIconView;->sTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #tempCanvas:Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/DragState;

    if-nez v6, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v7

    .line 155
    :cond_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v6, :cond_3

    .line 156
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    .line 157
    .local v2, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    .line 158
    .local v4, item:Lcom/android/launcher2/BaseItem;
    if-eqz v4, :cond_6

    iget-object v6, v4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v8, :cond_2

    iget-object v6, v4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v8, :cond_2

    instance-of v6, v4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v6, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 160
    .local v1, dragFromMenu:Z
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_0

    .line 169
    .end local v1           #dragFromMenu:Z
    .end local v2           #dragState:Lcom/android/launcher2/DragState;
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 170
    .local v5, myParent:Landroid/view/ViewParent;
    instance-of v6, v5, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_4

    .line 171
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 172
    .local v3, grandParent:Landroid/view/ViewParent;
    instance-of v6, v3, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v6, :cond_4

    .line 173
    check-cast v3, Lcom/android/launcher2/CellLayoutNoGap;

    .end local v3           #grandParent:Landroid/view/ViewParent;
    invoke-virtual {v3, p1, p0}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    .line 177
    .restart local v2       #dragState:Lcom/android/launcher2/DragState;
    invoke-direct {p0, v2}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v0

    .line 178
    .local v0, accept:Z
    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_2
    move v7, v0

    .line 203
    goto :goto_0

    .end local v0           #accept:Z
    .end local v5           #myParent:Landroid/view/ViewParent;
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    :cond_6
    move v1, v7

    .line 158
    goto :goto_1

    .line 181
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    .restart local v0       #accept:Z
    .restart local v5       #myParent:Landroid/view/ViewParent;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 182
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    goto :goto_2

    .line 185
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragExit()V

    goto :goto_2

    .line 188
    :pswitch_2
    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    check-cast v6, Lcom/android/launcher2/BaseItem;

    iget-object v6, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v8, :cond_7

    .line 190
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    .line 191
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    iput v6, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 194
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    invoke-virtual {v2, p0, v7, v7, v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    .line 195
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragExit()V

    .line 196
    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_2

    .line 199
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragExit()V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 147
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher2/FolderItem;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 231
    .local v1, itemInfo:Lcom/android/launcher2/BaseItem;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 236
    :goto_0
    return v2

    .line 233
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, p1}, Lcom/android/launcher2/FolderIconView;->createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, folderIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 236
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    return-void
.end method

.method public showBadge()V
    .locals 12

    .prologue
    .line 347
    sget-object v10, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v10, v11, :cond_0

    .line 392
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 350
    .local v9, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 351
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    instance-of v10, v9, Lcom/android/launcher2/AppFolderItem;

    if-eqz v10, :cond_3

    move-object v6, v9

    .line 352
    check-cast v6, Lcom/android/launcher2/AppFolderItem;

    .line 353
    .local v6, item:Lcom/android/launcher2/AppFolderItem;
    const/4 v8, 0x0

    .line 354
    .local v8, sum:I
    invoke-virtual {v6}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v7

    .line 355
    .local v7, itemCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 356
    invoke-virtual {v6, v4}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 357
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    iget v10, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v8, v10

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    .end local v4           #i:I
    .end local v6           #item:Lcom/android/launcher2/AppFolderItem;
    .end local v7           #itemCount:I
    .end local v8           #sum:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 360
    :cond_3
    instance-of v10, v9, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v10, :cond_2

    move-object v6, v9

    .line 361
    check-cast v6, Lcom/android/launcher2/HomeFolderItem;

    .line 363
    .local v6, item:Lcom/android/launcher2/HomeFolderItem;
    const/4 v5, 0x0

    .line 364
    .local v5, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 365
    .local v2, compName:Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v3, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 368
    .restart local v8       #sum:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    invoke-virtual {v6}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 370
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_4

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_5

    .line 373
    :cond_4
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v5, v10, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 374
    if-eqz v5, :cond_5

    .line 375
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 378
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 380
    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v8, v10

    .line 381
    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_6
    const/4 v5, 0x0

    .line 385
    const/4 v2, 0x0

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 388
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method
