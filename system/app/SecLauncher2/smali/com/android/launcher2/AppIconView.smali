.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
    }
.end annotation


# static fields
.field private static final HOME:I = 0x0

.field private static final MENU:I = 0x1

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static final SHADOW_LARGE_RADIUS:F = 4.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static final SHADOW_SMALL_RADIUS:F = 1.75f

.field static final SHADOW_Y_OFFSET:F = 2.0f

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field static sIconTopToTopOffset:I


# instance fields
.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private mDrawOnlyShadow:Z

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field private mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsChecked:Z

.field private mIsCheckingEnabled:Z

.field private mIsSingleLine:Z

.field private final mLastTouch:[I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field private mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field protected mTextVisible:Z

.field private mUncheckedOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0x64

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 62
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 69
    iput v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 80
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 81
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 132
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsSingleLine:Z

    .line 277
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    .line 467
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 94
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v2, v4, :cond_0

    .line 102
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string v4, "launcher:destination"

    const-string v5, "value of either \'home\' or \'menu\'"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    .line 110
    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    .line 112
    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    .line 113
    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 128
    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    const/high16 v5, -0x2300

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->setShadowLayer(FFFI)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppIconView;->setHoverPopupType(I)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppIconView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private drawIconShadow(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/high16 v2, 0x4000

    const/high16 v3, -0x2300

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 368
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 370
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 372
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe0

    const/high16 v2, -0x3400

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 376
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 378
    return-void
.end method

.method private setIconShadow(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 249
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-void
.end method

.method private updateCheckingOverlay()V
    .locals 2

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 445
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 213
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/AppIconView;->applyFromItem(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher2/BaseItem;)V

    .line 214
    return-void
.end method

.method protected applyFromItem(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .parameter "title"
    .parameter "icon"
    .parameter "item"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_3

    .line 139
    :cond_0
    if-nez p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, newFolderTitle:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    .end local v1           #newFolderTitle:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 155
    if-nez p2, :cond_5

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/launcher2/FolderIconView;

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 157
    .local v0, isFolder:Z
    :goto_1
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: isFolder= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    .end local v0           #isFolder:Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, newTitle:Ljava/lang/String;
    const-string v3, "Folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 150
    .end local v2           #newTitle:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, p3, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 165
    iget-object v3, p3, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    .line 171
    :cond_6
    :goto_2
    return-void

    .line 167
    :cond_7
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;)V

    goto :goto_2
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 209
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/AppIconView;->applyFromItem(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher2/BaseItem;)V

    .line 210
    return-void
.end method

.method public applyStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "textViewStyles"
    .parameter "viewStyles"

    .prologue
    .line 631
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppIconView;->setTextPaddingOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTextEllipsizeOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTextSingleLineOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTextDrawablePaddingOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setHorizontalFadingOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTextSizeOnAppIconView(Landroid/content/res/TypedArray;)V

    .line 639
    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "badgeCount"

    .prologue
    .line 474
    if-nez p1, :cond_0

    const/16 v20, 0x0

    .line 524
    :goto_0
    return-object v20

    .line 476
    :cond_0
    const/16 v19, 0x0

    .line 477
    .local v19, width:I
    const/4 v12, 0x0

    .line 479
    .local v12, height:I
    const/16 v20, 0x64

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget v21, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 485
    :goto_1
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 486
    .local v14, iwidth:I
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 487
    .local v13, iheight:I
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 489
    .local v16, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 490
    .local v18, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 491
    .local v15, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 492
    .local v17, paddingRight:I
    sub-int v20, v14, v16

    sub-int v11, v20, v17

    .line 493
    .local v11, defaultContentsWidth:I
    sub-int v20, v13, v18

    sub-int v10, v20, v15

    .line 496
    .local v10, defaultContentsHeight:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 498
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 500
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 501
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 502
    .local v8, contentsHeight:I
    if-ge v9, v10, :cond_3

    .line 503
    move v9, v11

    .line 508
    :goto_2
    if-ge v8, v10, :cond_1

    .line 509
    move v8, v10

    .line 512
    :cond_1
    add-int v20, v9, v16

    add-int v19, v20, v17

    .line 513
    add-int v20, v8, v18

    add-int v12, v20, v15

    .line 515
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 516
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 518
    .local v7, c:Landroid/graphics/Canvas;
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 519
    sget-object v20, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 521
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v12, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->descent()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 524
    new-instance v20, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 482
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v13           #iheight:I
    .end local v14           #iwidth:I
    .end local v15           #paddingBottom:I
    .end local v16           #paddingLeft:I
    .end local v17           #paddingRight:I
    .end local v18           #paddingTop:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget v21, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    .line 505
    .restart local v5       #badgeText:Ljava/lang/String;
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v8       #contentsHeight:I
    .restart local v9       #contentsWidth:I
    .restart local v10       #defaultContentsHeight:I
    .restart local v11       #defaultContentsWidth:I
    .restart local v13       #iheight:I
    .restart local v14       #iwidth:I
    .restart local v15       #paddingBottom:I
    .restart local v16       #paddingLeft:I
    .restart local v17       #paddingRight:I
    .restart local v18       #paddingTop:I
    :cond_3
    add-int/lit8 v9, v9, 0xa

    goto/16 :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 291
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v10, v1, v2

    .line 296
    .local v10, dw:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v9, v1, v2

    .line 297
    .local v9, dh:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 299
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    const/16 v1, 0xff

    if-ge v7, v1, :cond_0

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 308
    .end local v7           #alpha:I
    .end local v9           #dh:I
    .end local v10           #dw:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 310
    .restart local v7       #alpha:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getCurrentTextColor()I

    move-result v8

    .line 311
    .local v8, color:I
    const v1, 0xffffff

    and-int/2addr v8, v1

    .line 312
    shl-int/lit8 v1, v7, 0x18

    or-int/2addr v8, v1

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 315
    const/4 v14, 0x0

    .line 316
    .local v14, shadow_color:I
    shl-int/lit8 v1, v7, 0x18

    or-int/2addr v14, v1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 319
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    if-eqz v1, :cond_6

    .line 320
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 322
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 325
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 330
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 342
    .end local v7           #alpha:I
    .end local v8           #color:I
    .end local v14           #shadow_color:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 343
    .local v12, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 344
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v1

    sget v2, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v15, v1, v2

    .line 346
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v16

    .line 347
    .local v16, viewWidth:I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 348
    .local v13, overlayWidth:I
    div-int/lit8 v1, v16, 0x2

    sget v2, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    add-int v11, v1, v2

    .line 349
    .local v11, left:I
    add-int v1, v11, v13

    move/from16 v0, v16

    if-le v1, v0, :cond_4

    .line 350
    add-int v1, v11, v13

    sub-int v1, v1, v16

    sub-int/2addr v11, v1

    .line 353
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v1

    add-int/2addr v11, v1

    .line 354
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v15

    invoke-virtual {v12, v11, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 356
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    .end local v11           #left:I
    .end local v13           #overlayWidth:I
    .end local v15           #top:I
    .end local v16           #viewWidth:I
    :cond_5
    return-void

    .line 328
    .end local v12           #overlay:Landroid/graphics/drawable/Drawable;
    .restart local v7       #alpha:I
    .restart local v8       #color:I
    .restart local v14       #shadow_color:I
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 332
    .end local v7           #alpha:I
    .end local v8           #color:I
    .end local v14           #shadow_color:I
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v1, :cond_8

    .line 333
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    if-nez v1, :cond_3

    .line 334
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->drawIconShadow(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 336
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    if-nez v1, :cond_3

    .line 337
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 390
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 391
    .local v0, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 395
    :cond_0
    return-void
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hideBadge()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 541
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrop()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 287
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 262
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    return v0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 267
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .parameter "vis"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 176
    if-eqz p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 179
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 0

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 545
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    .line 457
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 459
    return-void
.end method

.method public setCheckingEnabled(Z)V
    .locals 0
    .parameter "checkingEnabled"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 425
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 427
    return-void
.end method

.method public setHorizontalFadingOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "array"

    .prologue
    .line 626
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 627
    .local v0, singleLine:Z
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 628
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 238
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->destroyDrawingCache()V

    .line 243
    return-void
.end method

.method setIconShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 254
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 382
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 385
    :cond_0
    return-void
.end method

.method public setTextDrawablePaddingOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "array"

    .prologue
    const/4 v2, -0x1

    .line 586
    const/16 v1, 0x34

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 587
    .local v0, dpadding:I
    if-eq v2, v0, :cond_0

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablePadding(I)V

    .line 590
    :cond_0
    return-void
.end method

.method public setTextEllipsizeOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, -0x1

    .line 602
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 603
    .local v0, ellipsize:I
    if-ne v3, v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 606
    :cond_0
    const/4 v1, 0x0

    .line 607
    .local v1, truncate:Landroid/text/TextUtils$TruncateAt;
    packed-switch v0, :pswitch_data_0

    .line 622
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 609
    :pswitch_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 610
    goto :goto_1

    .line 612
    :pswitch_1
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 613
    goto :goto_1

    .line 615
    :pswitch_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 616
    goto :goto_1

    .line 619
    :pswitch_3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTextPaddingOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 6
    .parameter "array"

    .prologue
    const/4 v5, 0x0

    .line 593
    const/16 v4, 0xe

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 594
    .local v1, paddingLeft:I
    const/16 v4, 0x10

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 595
    .local v2, paddingRight:I
    const/16 v4, 0xf

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 596
    .local v3, paddingTop:I
    const/16 v4, 0x11

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 598
    .local v0, paddingBottom:I
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/launcher2/AppIconView;->setPadding(IIII)V

    .line 599
    return-void
.end method

.method public setTextSingleLineOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 573
    const/16 v2, 0x20

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 574
    .local v1, singleLine:Z
    if-eqz v1, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setSingleLine()V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const/16 v2, 0x17

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 579
    .local v0, lines:I
    if-lez v0, :cond_0

    .line 580
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setSingleLine(Z)V

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setLines(I)V

    goto :goto_0
.end method

.method public setTextSizeOnAppIconView(Landroid/content/res/TypedArray;)V
    .locals 5
    .parameter "array"

    .prologue
    const/high16 v4, -0x4080

    .line 551
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 552
    .local v0, newSize:F
    cmpl-float v3, v4, v0

    if-nez v3, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTextSize()F

    move-result v1

    .line 556
    .local v1, oldSize:F
    cmpl-float v3, v1, v0

    if-eqz v3, :cond_0

    .line 559
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    .line 560
    cmpl-float v3, v0, v1

    if-gtz v3, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 569
    .local v2, text:Ljava/lang/CharSequence;
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setTextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 407
    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    .line 410
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method protected shouldHaveIconShadow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBadge()V
    .locals 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_1

    .line 532
    :cond_0
    const/4 v0, 0x0

    .line 536
    .end local v1           #tag:Ljava/lang/Object;
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 537
    return-void

    .line 534
    .end local v0           #badge:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .end local v1           #tag:Ljava/lang/Object;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #badge:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public startFadeShadow()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawOnlyShadow:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 283
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 464
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
