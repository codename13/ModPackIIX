.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# instance fields
.field private final BLOCK_EVENTS_TIMEOUT:J

.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field mRootLocationOnScreen:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 36
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    .line 164
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 166
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 198
    new-instance v0, Lcom/android/launcher2/AnimationLayer$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$2;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 303
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 306
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 36
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    .line 164
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 166
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 198
    new-instance v0, Lcom/android/launcher2/AnimationLayer$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$2;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 303
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 306
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AnimationLayer$Anim;>;"
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 310
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 315
    .restart local v0       #a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 317
    .local v3, v:Landroid/widget/ImageView;
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 318
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 319
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 320
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    .line 323
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 325
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 2
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 678
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 679
    .local v1, set:Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 683
    return-object v1
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 2
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 669
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 670
    .local v1, set:Landroid/animation/AnimatorSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 674
    return-object v1
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, v:Landroid/widget/ImageView;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 332
    .end local v0           #v:Landroid/widget/ImageView;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)V
    .locals 10
    .parameter "view"
    .parameter "shadow"
    .parameter "fadeOutDrop"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, b:Landroid/graphics/Bitmap;
    instance-of v0, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 353
    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    :cond_2
    if-nez v2, :cond_3

    .line 356
    invoke-virtual {p2}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 359
    :cond_3
    invoke-virtual {p2}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v9

    .line 360
    .local v9, offset:[I
    const/4 v0, 0x2

    new-array v3, v0, [I

    iget v0, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v3, v5

    iget v0, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v1, v9, v7

    sub-int/2addr v0, v1

    aput v0, v3, v7

    const/4 v4, 0x0

    const/16 v6, 0x140

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 362
    .local v8, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-boolean p3, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mFadeOutDrop:Z

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 8
    .parameter "view"
    .parameter "b"
    .parameter "from"
    .parameter "to"
    .parameter "fadeMove"
    .parameter "duration"
    .parameter "fadeInShadow"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 256
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 257
    .local v3, a:Landroid/widget/ImageView;
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 260
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 261
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz p5, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 268
    return-object v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    move v7, p7

    .line 264
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 4
    .parameter "view"
    .parameter "b"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 275
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 276
    .local v0, a:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 279
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    .line 280
    .local v1, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 281
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 283
    return-object v1
.end method

.method public cancelAnimationFor(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 295
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 300
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-void
.end method

.method public cancelAnimations()V
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 288
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_0

    .line 290
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 291
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 89
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 90
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 91
    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, localState:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 120
    .local v2, rc:Z
    if-ne v0, v4, :cond_2

    .line 121
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 122
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 124
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 126
    const/4 v2, 0x1

    .line 149
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 152
    :cond_1
    return v2

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eq v3, v1, :cond_4

    .line 129
    :cond_3
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 132
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 133
    const/4 v2, 0x1

    goto :goto_0

    .line 134
    :cond_5
    iget-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v3, :cond_0

    .line 136
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v5, :cond_7

    .line 138
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 139
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 140
    if-ne v0, v5, :cond_7

    .line 143
    iput-boolean v4, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 146
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 59
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 223
    instance-of v1, p2, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 229
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-boolean v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 233
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 234
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 236
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 13
    .parameter "v"
    .parameter "b"

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 371
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 373
    .local v4, l:[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 375
    const/4 v9, 0x2

    new-array v6, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v4, v10

    int-to-float v10, v10

    aput v10, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v4, v10

    int-to-float v10, v10

    aput v10, v6, v9

    .line 376
    .local v6, pos:[F
    const/4 v9, 0x1

    aget v10, v6, v9

    iget-object v11, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    aput v10, v6, v9

    .line 379
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v2, v9, v10

    .line 380
    .local v2, dx:F
    const/4 v3, 0x0

    .line 381
    .local v3, dy:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 383
    .local v8, tag:Ljava/lang/Object;
    instance-of v9, v8, Lcom/android/launcher2/BaseItem;

    if-eqz v9, :cond_0

    check-cast v8, Lcom/android/launcher2/BaseItem;

    .end local v8           #tag:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v3, v9

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 389
    .local v7, s:F
    const/4 v9, 0x0

    aget v10, v6, v9

    mul-float v11, v2, v7

    add-float/2addr v10, v11

    aput v10, v6, v9

    .line 390
    const/4 v9, 0x1

    aget v10, v6, v9

    mul-float v11, v3, v7

    add-float/2addr v10, v11

    aput v10, v6, v9

    .line 392
    const/high16 v9, 0x3f80

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_2

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v1, v9

    .line 394
    .local v1, bw:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v0, v9

    .line 395
    .local v0, bh:F
    const/4 v9, 0x0

    aget v10, v6, v9

    mul-float v11, v1, v7

    sub-float v11, v1, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v6, v9

    .line 396
    const/4 v9, 0x1

    aget v10, v6, v9

    mul-float v11, v0, v7

    sub-float v11, v0, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v6, v9

    .line 399
    .end local v0           #bh:F
    .end local v1           #bw:F
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v6, v10

    float-to-int v10, v10

    aput v10, v4, v9

    .line 400
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v6, v10

    float-to-int v10, v10

    aput v10, v4, v9

    .line 402
    return-object v4
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 158
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 161
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOnScreen([I)V

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 101
    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[I)Z
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 212
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 213
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    iput-object p2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 215
    const/4 v2, 0x1

    .line 218
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
