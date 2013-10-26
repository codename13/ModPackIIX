.class public Lcom/android/launcher2/AlphabeticalListIndicator;
.super Landroid/view/View;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AlphabeticalListIndicator$1;,
        Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;,
        Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;,
        Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;,
        Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    }
.end annotation


# static fields
.field private static final GRP_SIZE:I = 0x3

.field public static final INDEX_CHANGED:I = 0x1

.field public static final INDEX_CHANGED_AND_PREMATCH:I = 0x2

.field public static final INDEX_INVALID:I = 0x5

.field public static final INDEX_NOT_PROCESSED:I = 0x4

.field public static final INDEX_NO_CHANGE:I = 0x3

.field private static final INVALID_WORKING_STR:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AlphabeticalListIndicator"

.field private static final PT_ABOVE_FIRST_CHAR:I = -0x2

.field private static final PT_BELOW_LAST_CHAR:I = -0x3


# instance fields
.field private mAllowWiggle:Z

.field private mAlphaAnim:Lcom/android/launcher2/ScalarAnimator;

.field private mBgFullHeight:Z

.field private mCellHeight:F

.field private mCellSepLineMarginLeft:F

.field private mCellSepLineMarginRight:F

.field private mCellSepLinePaint:Landroid/graphics/Paint;

.field private mCellSepLineThick:F

.field private mCurrentIndex:I

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mFirstCharPreMatches:Z

.field private mIndexStr:Ljava/lang/String;

.field private mIsFloating:Z

.field private mNormalBg:Landroid/graphics/drawable/Drawable;

.field private mOverflowGrpCharMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;",
            ">;"
        }
    .end annotation
.end field

.field private mOverflowGrpSepChar:C

.field private mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

.field private mPressDelay:I

.field private mSelBg:Landroid/graphics/drawable/Drawable;

.field private mSelItemBg:Landroid/graphics/drawable/Drawable;

.field private mSelTextColor:I

.field private mTextColor:I

.field private mTextMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextUppercase:Z

.field private mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

.field private mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

.field private mUnpressDelay:I

.field private mWorkingStr:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellHeight:F

    .line 33
    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIsFloating:Z

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 35
    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mPressDelay:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mUnpressDelay:I

    .line 39
    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    .line 40
    iput-boolean v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextUppercase:Z

    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAllowWiggle:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    .line 44
    new-instance v0, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    .line 45
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0}, Lcom/android/launcher2/ScalarAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAlphaAnim:Lcom/android/launcher2/ScalarAnimator;

    .line 46
    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    .line 49
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellHeight:F

    .line 33
    iput-boolean v8, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIsFloating:Z

    .line 34
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 35
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    .line 36
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    .line 37
    iput v9, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    const/16 v4, 0xc8

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mPressDelay:I

    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mUnpressDelay:I

    .line 39
    const/16 v4, 0x2e

    iput-char v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    .line 40
    iput-boolean v7, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    iput-boolean v7, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextUppercase:Z

    iput-boolean v8, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAllowWiggle:Z

    iput-boolean v7, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    .line 41
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v4, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    .line 44
    new-instance v4, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    .line 45
    new-instance v4, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v4}, Lcom/android/launcher2/ScalarAnimator;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAlphaAnim:Lcom/android/launcher2/ScalarAnimator;

    .line 46
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 48
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    .line 49
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    iput v6, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    iput v6, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    .line 55
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    .line 65
    sget-object v4, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListIndicator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v4, 0xc8

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mPressDelay:I

    .line 68
    const/4 v4, 0x2

    const/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mUnpressDelay:I

    .line 69
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    .line 70
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextUppercase:Z

    .line 71
    const/16 v4, 0x14

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    .line 72
    const/high16 v4, -0x4080

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellHeight:F

    .line 73
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIsFloating:Z

    .line 74
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 75
    .local v1, cellSepLineColor:I
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    .line 78
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    .line 79
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    .line 80
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, temp:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    .line 84
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    .line 85
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    .line 86
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    .line 87
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextColor:I

    .line 88
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelTextColor:I

    .line 95
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 96
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    const/16 v5, 0x12

    const/high16 v6, 0x4120

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 98
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 100
    new-array v2, v8, [C

    .line 101
    .local v2, ch:[C
    iget-char v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    aput-char v4, v2, v7

    .line 102
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    array-length v5, v2

    iget-object v6, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v7, v5, v6}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 103
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void
.end method

.method private addGroupRange(Ljava/lang/String;Ljava/lang/StringBuffer;II)Z
    .locals 2
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aStartIndex"
    .parameter "aEndIndex"

    .prologue
    .line 351
    move v0, p3

    .local v0, i:I
    :goto_0
    if-gt v0, p4, :cond_0

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addOverflowGroupRange(Ljava/lang/String;Ljava/lang/StringBuffer;II)Z
    .locals 3
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aStartIndex"
    .parameter "aEndIndex"

    .prologue
    .line 332
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    iget-char v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 335
    .local v1, workingIndex:I
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;

    .line 336
    .local v0, range:Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;

    .end local v0           #range:Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;Lcom/android/launcher2/AlphabeticalListIndicator$1;)V

    .line 338
    .restart local v0       #range:Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    :cond_0
    add-int/lit8 v2, p3, 0x1

    iput v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    .line 341
    add-int/lit8 v2, p4, -0x1

    iput v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    .line 342
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    .line 344
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    const/4 v2, 0x1

    return v2
.end method

.method private compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .locals 7
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aDrawBounds"
    .parameter "aTouchPt"
    .parameter "aAllowWiggle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCharsWouldFit(F)I

    move-result v2

    .line 496
    .local v2, charsWouldFit:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    if-eqz p5, :cond_0

    .line 500
    add-int/lit8 v2, v2, -0x1

    .line 502
    :cond_0
    if-ge v2, v5, :cond_2

    .line 524
    :cond_1
    :goto_0
    return v4

    .line 505
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 506
    invoke-direct {p0, p1, p2, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v0

    .line 510
    .local v0, cellHt:F
    const/high16 v6, 0x4000

    div-float v1, v0, v6

    .line 514
    .local v1, cellHtHalf:F
    iget v6, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    iput v6, p4, Landroid/graphics/PointF;->y:F

    .line 515
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {p0, v6, v2, p3, p4}, Lcom/android/launcher2/AlphabeticalListIndicator;->computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 519
    invoke-direct {p0, p3, p4, p2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 520
    .local v3, touchIndex:I
    if-eqz p5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/launcher2/AlphabeticalListIndicator;->isCellIndexValid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    if-ne v4, v6, :cond_3

    .line 521
    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->top:F

    .line 522
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->bottom:F

    :cond_3
    move v4, v5

    .line 524
    goto :goto_0
.end method

.method private computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 13
    .parameter "aLength"
    .parameter "aCapacity"
    .parameter "aBounds"
    .parameter "aTouchPt"

    .prologue
    .line 440
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 441
    .local v7, padding:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getHeight()I

    move-result v9

    int-to-float v5, v9

    .line 442
    .local v5, ht:F
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v2

    .line 443
    .local v2, cellHt:F
    int-to-float v9, p1

    mul-float v4, v9, v2

    .line 444
    .local v4, fitHt:F
    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v9, v10

    .line 445
    .local v6, padHt:F
    sub-float v1, v5, v6

    .line 447
    .local v1, availHt:F
    iget v9, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->left:F

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->right:F

    .line 449
    iget-boolean v9, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    if-eqz v9, :cond_0

    .line 450
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 451
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 452
    const/4 v9, 0x1

    .line 478
    :goto_0
    return v9

    .line 454
    :cond_0
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 455
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 456
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 457
    const/4 v9, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget v9, v7, Landroid/graphics/RectF;->top:F

    add-float v8, v9, v1

    .line 460
    .local v8, unpaddedBottom:F
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_2

    .line 461
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 462
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 463
    const/4 v9, 0x1

    goto :goto_0

    .line 465
    :cond_2
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v9}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCharsWouldFit(F)I

    move-result v3

    .line 466
    .local v3, charsWouldFitFromY:I
    if-gt p1, v3, :cond_3

    .line 467
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 468
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 469
    const/4 v9, 0x1

    goto :goto_0

    .line 471
    :cond_3
    if-lez v3, :cond_4

    .line 472
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 473
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 474
    const/4 v9, 0x1

    goto :goto_0

    .line 476
    :cond_4
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 477
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 478
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z
    .locals 12
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aCapacity"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 363
    iget-object v11, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 365
    .local v4, len:I
    move v7, p3

    .line 366
    .local v7, numWouldFit:I
    if-gt v4, v7, :cond_0

    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :goto_0
    return v9

    .line 370
    :cond_0
    const/4 v5, 0x3

    .line 371
    .local v5, minNeeded:I
    iget-boolean v11, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v11, :cond_1

    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 374
    :cond_1
    if-ge v7, v5, :cond_2

    move v9, v10

    .line 375
    goto :goto_0

    .line 377
    :cond_2
    const/4 v8, 0x0

    .line 378
    .local v8, startIndex:I
    iget-boolean v11, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v11, :cond_3

    .line 379
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    add-int/lit8 v8, v8, 0x1

    .line 381
    add-int/lit8 v7, v7, -0x1

    .line 383
    :cond_3
    int-to-float v10, v7

    const/high16 v11, 0x4040

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 384
    .local v6, numPossibleGrps:I
    sub-int v10, v4, v8

    int-to-float v10, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-int v0, v10

    .line 389
    .local v0, charsPerGrp:I
    add-int/lit8 v2, v6, -0x2

    .local v2, i:I
    move v3, v8

    .local v3, index:I
    :goto_1
    if-ltz v2, :cond_5

    .line 390
    add-int/lit8 v10, v0, -0x1

    add-int v1, v3, v10

    .line 391
    .local v1, endIndex:I
    const/4 v10, 0x3

    if-ne v10, v0, :cond_4

    .line 392
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->addGroupRange(Ljava/lang/String;Ljava/lang/StringBuffer;II)Z

    .line 396
    :goto_2
    add-int/lit8 v3, v1, 0x1

    .line 389
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 394
    :cond_4
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->addOverflowGroupRange(Ljava/lang/String;Ljava/lang/StringBuffer;II)Z

    goto :goto_2

    .line 401
    .end local v1           #endIndex:I
    :cond_5
    add-int/lit8 v1, v4, -0x1

    .line 402
    .restart local v1       #endIndex:I
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->addOverflowGroupRange(Ljava/lang/String;Ljava/lang/StringBuffer;II)Z

    goto :goto_0
.end method

.method private drawChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;FCFFFZ)V
    .locals 16
    .parameter "aCanvas"
    .parameter "aPadding"
    .parameter "aWidth"
    .parameter "aCh"
    .parameter "aPosX"
    .parameter "aPosY"
    .parameter "aCellHt"
    .parameter "aDrawSepLine"

    .prologue
    .line 247
    const/4 v1, 0x1

    new-array v2, v1, [C

    .line 248
    .local v2, ch:[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v13, v1, v3

    .line 249
    .local v13, aTxtHt:F
    sub-float v1, p7, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float v15, v1, v3

    .line 251
    .local v15, bottomGap:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    add-float/2addr v1, v3

    sub-float v6, p6, v1

    .line 252
    .local v6, drawY:F
    const/4 v1, 0x0

    aput-char p4, v2, v1

    .line 253
    const/4 v1, 0x0

    aget-char v1, v2, v1

    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    if-ne v1, v3, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 255
    .local v14, bndsHt:I
    int-to-float v1, v14

    sub-float/2addr v6, v1

    .line 261
    .end local v14           #bndsHt:I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 262
    if-eqz p8, :cond_1

    .line 263
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    add-float v8, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    sub-float v9, p6, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v1, v1, p3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    sub-float v10, v1, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move/from16 v11, p6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    :cond_1
    return-void

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextUppercase:Z

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget-char v3, v2, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    goto :goto_0
.end method

.method private getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "aBounds"
    .parameter "aPt"
    .parameter "aWorkingStr"

    .prologue
    .line 419
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 420
    .local v1, len:I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 421
    const/4 v0, -0x1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 424
    .local v3, top:F
    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v3

    .line 425
    .local v2, relY:F
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v4

    div-float v4, v2, v4

    float-to-int v0, v4

    .line 426
    .local v0, index:I
    if-gez v0, :cond_2

    .line 427
    const/4 v0, -0x2

    goto :goto_0

    .line 429
    :cond_2
    if-lt v0, v1, :cond_0

    .line 430
    const/4 v0, -0x3

    goto :goto_0
.end method

.method private getCharsWouldFit(F)I
    .locals 5
    .parameter "aYOffset"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 483
    .local v0, availHt:F
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v1

    .line 484
    .local v1, cellHt:F
    div-float v3, v0, v1

    float-to-int v2, v3

    .line 485
    .local v2, charsWouldFit:I
    return v2
.end method

.method private isCellIndexValid(I)Z
    .locals 1
    .parameter "aChar"

    .prologue
    .line 436
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryUpdateCellIndexForOverflowGrp(ILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 14
    .parameter "aCurrentIndex"
    .parameter "aBounds"
    .parameter "aPt"

    .prologue
    .line 162
    iget-object v12, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 163
    .local v3, ch:C
    iget-char v12, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    if-eq v3, v12, :cond_0

    .line 164
    const/4 v12, 0x0

    .line 186
    :goto_0
    return v12

    .line 166
    :cond_0
    iget-object v12, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;

    .line 167
    .local v7, range:Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    if-eqz v7, :cond_1

    iget v12, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    iget v13, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    if-gt v12, v13, :cond_2

    .line 168
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 170
    :cond_2
    iget v12, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    iget v13, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    .line 171
    .local v9, rangeLen:I
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v1

    .line 172
    .local v1, cellHt:F
    int-to-float v12, v9

    div-float v6, v1, v12

    .line 173
    .local v6, pxPerChar:F
    const/4 v12, 0x0

    cmpg-float v12, v6, v12

    if-gez v12, :cond_3

    .line 174
    const/4 v12, 0x0

    goto :goto_0

    .line 176
    :cond_3
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 177
    .local v11, top:F
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/PointF;->y:F

    sub-float v10, v12, v11

    .line 178
    .local v10, relY:F
    int-to-float v12, p1

    mul-float v2, v12, v1

    .line 179
    .local v2, cellTop:F
    sub-float v5, v10, v2

    .line 180
    .local v5, pxInsideCell:F
    div-float v12, v5, v6

    float-to-int v4, v12

    .line 181
    .local v4, indexInsideCell:I
    iget v12, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    add-int v8, v12, v4

    .line 182
    .local v8, rangeCurrIndex:I
    iget v12, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    if-ne v8, v12, :cond_4

    .line 183
    const/4 v12, 0x0

    goto :goto_0

    .line 185
    :cond_4
    iput v8, v7, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    .line 186
    const/4 v12, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Contains(Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "aPt"

    .prologue
    .line 236
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    .local v0, bounds:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public clearCurrentChar()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->invalidate()V

    .line 215
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 271
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 272
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 274
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingBottom()I

    move-result v6

    invoke-direct {v3, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    .local v3, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 326
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v8

    .line 282
    .local v8, cellHt:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .local v13, len:I
    const/4 v14, -0x1

    .line 283
    .local v14, oneBeforeCurrent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getWidth()I

    move-result v1

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 284
    .local v4, width:F
    new-instance v15, Landroid/graphics/PointF;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineMarginRight:F

    add-float/2addr v2, v5

    sub-float v2, v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-direct {v15, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 287
    .local v15, pos:Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ltz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ge v1, v13, :cond_3

    .line 294
    iget v1, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float v16, v1, v2

    .line 295
    .local v16, y:F
    const/high16 v1, 0x4000

    div-float v11, v8, v1

    .line 296
    .local v11, halfCellHt:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 297
    .local v10, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    const/high16 v5, 0x4040

    mul-float/2addr v5, v11

    sub-float v5, v16, v5

    float-to-int v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-float v7, v16, v11

    float-to-int v7, v7

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    add-int/lit8 v14, v1, -0x1

    .line 309
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v11           #halfCellHt:F
    .end local v16           #y:F
    :cond_3
    :goto_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v13, :cond_0

    .line 310
    add-int/lit8 v1, v13, -0x1

    if-lt v12, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    if-eqz v1, :cond_8

    :cond_4
    const/4 v9, 0x1

    .line 311
    .local v9, drawCellSep:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ne v12, v1, :cond_a

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_4
    and-int/2addr v9, v1

    .line 318
    :goto_5
    if-ne v12, v14, :cond_5

    .line 319
    const/4 v9, 0x0

    .line 324
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float v7, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher2/AlphabeticalListIndicator;->drawChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;FCFFFZ)V

    .line 309
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 290
    .end local v9           #drawCellSep:Z
    .end local v12           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 302
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 310
    .restart local v12       #i:I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 314
    .restart local v9       #drawCellSep:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 316
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 322
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_6
.end method

.method public feedPt(Landroid/graphics/PointF;)I
    .locals 4
    .parameter "aPt"

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2, p1, v3}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 191
    .local v0, charIndex:I
    invoke-direct {p0, v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isCellIndexValid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 192
    iget-boolean v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mBgFullHeight:Z

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    .line 194
    const/4 v1, 0x5

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->tryUpdateCellIndexForOverflowGrp(ILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ne v0, v2, :cond_3

    .line 202
    const/4 v1, 0x3

    goto :goto_0

    .line 204
    :cond_3
    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->invalidate()V

    .line 206
    iget v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v2, :cond_0

    .line 207
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getCellHeight()F
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellHeight:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellSepLineThick:F

    add-float/2addr v0, v1

    .line 157
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCellHeight:F

    goto :goto_0
.end method

.method public getCurrentChar()Ljava/lang/Character;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 218
    iget v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 222
    .local v0, ch:C
    iget-char v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpSepChar:C

    if-eq v0, v3, :cond_2

    .line 223
    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mOverflowGrpCharMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;

    .line 226
    .local v1, range:Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
    if-eqz v1, :cond_0

    .line 229
    iget v3, v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    iget v4, v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mStartIndex:I

    if-lt v3, v4, :cond_0

    iget v3, v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    iget v4, v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mEndIndex:I

    if-gt v3, v4, :cond_0

    .line 232
    new-instance v2, Ljava/lang/Character;

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    iget v4, v1, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method public getMidYForCurrentChar()F
    .locals 3

    .prologue
    .line 407
    iget v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 408
    const/high16 v1, -0x4080

    .line 411
    :goto_0
    return v1

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCellHeight()F

    move-result v0

    .line 411
    .local v0, cellHt:F
    iget v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIsFloating:Z

    return v0
.end method

.method public isPreMatching()Z
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mFirstCharPreMatches:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextUppercase()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mTextUppercase:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 529
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 533
    if-eqz p1, :cond_0

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->updateBounds(Landroid/graphics/PointF;)Z

    .line 536
    :cond_0
    return-void
.end method

.method public pressDelayed()Z
    .locals 3

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->abort()Z

    .line 598
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    iget v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mPressDelay:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;->postToQueue(I)V

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_0
    return v0
.end method

.method public setAllowWiggle(Z)V
    .locals 0
    .parameter "aWiggle"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAllowWiggle:Z

    .line 151
    return-void
.end method

.method public setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 0
    .parameter "aStr"
    .parameter "aPt"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AlphabeticalListIndicator;->updateBounds(Landroid/graphics/PointF;)Z

    .line 112
    return-void
.end method

.method public setPressedImmediate(Z)V
    .locals 2
    .parameter "aPressed"

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, mustRedraw:Z
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAlphaAnim:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 608
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 609
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 610
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressed(Z)V

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->invalidate()V

    .line 615
    :cond_0
    return-void

    .line 610
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unPressDelayed()Z
    .locals 3

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$PressRunnable;->abort()Z

    .line 588
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mToUnPressedState:Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;

    iget v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mUnpressDelay:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->postToQueue(I)V

    .line 590
    const/4 v0, 0x1

    .line 592
    :cond_0
    return v0
.end method

.method public updateBounds(Landroid/graphics/PointF;)Z
    .locals 7
    .parameter "aPt"

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mCurrentIndex:I

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v6

    .line 146
    :goto_0
    return v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    .line 129
    new-instance p1, Landroid/graphics/PointF;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 131
    .restart local p1
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 132
    .local v3, drawBounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mIndexStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mWorkingStr:Ljava/lang/StringBuffer;

    iget-boolean v5, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mAllowWiggle:Z

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mNormalBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mSelItemBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->invalidate()V

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v6

    .line 146
    goto :goto_0
.end method
