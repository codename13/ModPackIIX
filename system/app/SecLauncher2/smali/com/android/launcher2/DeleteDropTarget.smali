.class public Lcom/android/launcher2/DeleteDropTarget;
.super Lcom/android/launcher2/DeleteIcon;
.source "DeleteDropTarget.java"


# instance fields
.field private mIsOver:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/DeleteIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTempRect:Landroid/graphics/Rect;

    .line 43
    iput-boolean v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mIsOver:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    return-void
.end method

.method private startTrashCanFillUnfillAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050011

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 147
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050015

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050010

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 160
    new-instance v3, Lcom/android/launcher2/DeleteDropTarget$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DeleteDropTarget$1;-><init>(Lcom/android/launcher2/DeleteDropTarget;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 181
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 185
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    return-void
.end method

.method private startTrashCanShaking()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v0, v4

    .line 110
    .local v0, IsLandscape:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mIsOver:Z

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, ParentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v3, v6, :cond_2

    .line 113
    const v3, 0x7f020052

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 121
    iput-boolean v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mIsOver:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->startTrashCanShakeAnimation()V

    .line 124
    .end local v1           #ParentView:Landroid/view/View;
    :cond_0
    return-void

    .end local v0           #IsLandscape:Z
    :cond_1
    move v0, v5

    .line 108
    goto :goto_0

    .line 115
    .restart local v0       #IsLandscape:Z
    .restart local v1       #ParentView:Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_3

    .line 116
    const v3, 0x7f020084

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 118
    :cond_3
    const v3, 0x7f020083

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private stopTrashCanShaking(Z)V
    .locals 6
    .parameter "playDeleteAnimation"

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v0, 0x1

    .line 86
    .local v0, IsLandscape:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mIsOver:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, ParentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x258

    if-lt v3, v5, :cond_2

    .line 89
    const v3, 0x7f020052

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mIsOver:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->stopTrashCanShakeAnimation()V

    .line 98
    if-eqz p1, :cond_4

    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->startTrashCanFillUnfillAnimation()V

    .line 104
    .end local v1           #ParentView:Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .end local v0           #IsLandscape:Z
    :cond_1
    move v0, v4

    .line 84
    goto :goto_0

    .line 91
    .restart local v0       #IsLandscape:Z
    .restart local v1       #ParentView:Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    const v3, 0x7f020088

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 94
    :cond_3
    const v3, 0x7f020087

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2
.end method


# virtual methods
.method public checkOver(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, ParentView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->startTrashCanShaking()V

    .line 136
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 138
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher2/DeleteDropTarget;->stopTrashCanShaking(Z)V

    move v1, v2

    .line 139
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/launcher2/DeleteIcon;->draw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 64
    .local v1, width:I
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 65
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 66
    .local v2, x:I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int v3, v4, v5

    .line 73
    .local v3, y:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    return-void
.end method

.method public onDrop()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->stopTrashCanShaking(Z)V

    .line 128
    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 190
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTrashCanAlpha(F)V

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->invalidate()V

    .line 194
    return-void
.end method
