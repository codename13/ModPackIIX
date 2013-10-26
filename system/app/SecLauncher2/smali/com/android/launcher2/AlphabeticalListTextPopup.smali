.class Lcom/android/launcher2/AlphabeticalListTextPopup;
.super Landroid/view/View;
.source "AlphabeticalListTextPopup.java"


# static fields
.field private static final CHARSPACINGSTRATEGY_ACTUALS:I = 0x0

.field private static final CHARSPACINGSTRATEGY_FIXED:I = 0x1

.field private static final CHARSPACINGSTRATEGY_MAX:I = 0x2

.field private static final DEBUG:Z


# instance fields
.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mDrawText:Ljava/lang/String;

.field private mDrawTextAdv:[F

.field private mStyles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/RectF;

.field private mTextCharPaddingLeft:F

.field private mTextCharPaddingRight:F

.field private mTextCharSpacingStrategy:I

.field private mTextCharSpacingWidth:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextUppercase:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextUppercase:Z

    .line 31
    iput-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextBounds:Landroid/graphics/RectF;

    .line 33
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    .line 34
    iput-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 35
    iput-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    .line 36
    iput-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    .line 37
    iput v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    .line 38
    iput v4, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingLeft:F

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingRight:F

    .line 40
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mStyles:Landroid/util/SparseArray;

    .line 46
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListTextPopup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextUppercase:Z

    .line 55
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x4

    const/high16 v3, 0x41f0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 57
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    .line 58
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    .line 59
    iget v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    if-ne v6, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 60
    iput v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    .line 62
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingLeft:F

    .line 63
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingRight:F

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 68
    return-void
.end method

.method private updateBounds()V
    .locals 11

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 112
    .local v0, availRect:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 113
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v3, padding:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 119
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 120
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 121
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 123
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 125
    .local v2, len:I
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    invoke-virtual {v5, v6, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 127
    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, v2

    iget v6, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingLeft:F

    iget v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingRight:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    .local v4, textSize:Landroid/graphics/PointF;
    iget v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    packed-switch v5, :pswitch_data_0

    .line 147
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextBounds:Landroid/graphics/RectF;

    invoke-static {v5, v0, v4}, Lcom/android/launcher2/Utilities;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 149
    .end local v2           #len:I
    .end local v4           #textSize:Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->invalidate()V

    .line 150
    return-void

    .line 131
    .restart local v2       #len:I
    .restart local v4       #textSize:Landroid/graphics/PointF;
    :pswitch_0
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    .line 135
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 136
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    aget v5, v5, v1

    iput v5, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v1           #i:I
    :cond_3
    :pswitch_2
    iget v5, v4, Landroid/graphics/PointF;->x:F

    int-to-float v6, v2

    iget v7, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearStyles()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "skCanvas"

    .prologue
    .line 162
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    .line 176
    .local v15, len:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextBounds:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    .local v5, xPos:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v6, v1, v2

    .line 178
    .local v6, yPos:F
    new-instance v7, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v7, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 179
    .local v7, temp:Landroid/text/TextPaint;
    const/16 v16, 0x0

    .line 180
    .local v16, preSpc:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v15, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/text/style/CharacterStyle;

    .line 182
    .local v17, style:Landroid/text/style/CharacterStyle;
    if-eqz v17, :cond_3

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingLeft:F

    add-float/2addr v5, v1

    .line 190
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingStrategy:I

    if-nez v1, :cond_4

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    aget v1, v1, v3

    add-float/2addr v5, v1

    .line 198
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharPaddingRight:F

    add-float/2addr v5, v1

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawTextAdv:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v16, v1, v2

    .line 195
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1

    add-float v12, v5, v16

    move-object/from16 v8, p1

    move v10, v3

    move v13, v6

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextCharSpacingWidth:F

    add-float/2addr v5, v1

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setDrawBounds(FFFF)V

    .line 86
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setDrawBounds(FFFF)V
    .locals 1
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->updateBounds()V

    .line 91
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/PointF;)V
    .locals 6
    .parameter "aSize"

    .prologue
    .line 94
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    .local v1, padding:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 97
    .local v0, availSize:Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawBounds:Landroid/graphics/RectF;

    invoke-static {v2, v0, p1}, Lcom/android/launcher2/Utilities;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 98
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->updateBounds()V

    .line 99
    return-void
.end method

.method public setStyle(ILandroid/text/style/CharacterStyle;)V
    .locals 1
    .parameter "aIndex"
    .parameter "aStyle"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "aText"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mTextUppercase:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AlphabeticalListTextPopup;->mDrawText:Ljava/lang/String;

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListTextPopup;->updateBounds()V

    .line 108
    return-void
.end method
