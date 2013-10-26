.class public Lcom/android/launcher2/MenuTabHost;
.super Landroid/widget/TabHost;
.source "MenuTabHost.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field mMenuOrMarket:Landroid/view/View;

.field mMenuTabHostDarken:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 36
    return-void
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 6
    .parameter
    .parameter "tabContentAnimator"
    .parameter "otherAnimator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x1020011

    .line 137
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, container:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 145
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 151
    new-instance v4, Lcom/android/launcher2/MenuTabHost$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuTabHost$1;-><init>(Lcom/android/launcher2/MenuTabHost;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .restart local v0       #a:Landroid/animation/Animator;
    goto :goto_2

    .line 172
    .end local v0           #a:Landroid/animation/Animator;
    .end local v3           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10b0001

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuTabHost;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 116
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuTabHost;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 111
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/high16 v0, 0x6

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getMenuOrMarketButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    return-object v0
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 188
    .local v3, r:Landroid/content/res/Resources;
    const v7, 0x7f0c0046

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 189
    .local v2, padding:I
    const v7, 0x7f0c0037

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 194
    .local v0, height:I
    const v7, 0x7f070058

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 195
    .local v5, titleBar:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 198
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 199
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 203
    const v7, 0x7f07005a

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleBar:Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 204
    .restart local v5       #titleBar:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 208
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 212
    const v7, 0x7f07005b

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleBar:Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 213
    .restart local v5       #titleBar:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 216
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 217
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 221
    const v7, 0x7f07005d

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleBar:Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 222
    .restart local v5       #titleBar:Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 223
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 226
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 227
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 232
    :cond_0
    const v7, 0x7f07005f

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleBar:Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 233
    .restart local v5       #titleBar:Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 234
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 237
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 238
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 243
    :cond_1
    const v7, 0x7f07005e

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 244
    .local v6, titlebarStub:Landroid/view/ViewStub;
    if-eqz v6, :cond_2

    .line 245
    invoke-virtual {v6}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 248
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 249
    invoke-virtual {v6, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v6}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/ViewStub;->setPadding(IIII)V

    .line 254
    :cond_2
    const v7, 0x7f070061

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #titleBar:Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 255
    .restart local v5       #titleBar:Landroid/view/ViewGroup;
    if-eqz v5, :cond_3

    .line 256
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 259
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 260
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 265
    :cond_3
    const v7, 0x7f070060

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #titlebarStub:Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 266
    .restart local v6       #titlebarStub:Landroid/view/ViewStub;
    if-eqz v6, :cond_4

    .line 267
    invoke-virtual {v6}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 270
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    invoke-virtual {v6, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-virtual {v6}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/view/ViewStub;->setPadding(IIII)V

    .line 276
    :cond_4
    const v7, 0x1020011

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 277
    .local v4, tabContentView:Landroid/view/View;
    if-eqz v4, :cond_5

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 280
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->onDivideMenuTab()V

    .line 285
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/TabHost;->onFinishInflate()V

    .line 49
    iget-object v3, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->setup()V

    .line 53
    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .local v2, menuButton:Landroid/widget/ImageView;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    .local v1, marketButton:Landroid/widget/ImageView;
    const v3, 0x7f07001a

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, downloadedButton:Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    iput-object v0, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    .line 59
    new-instance v3, Lcom/android/launcher2/DownloadedIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher2/DownloadedIconKeyEventListener;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 60
    invoke-static {v2}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    .line 61
    invoke-static {v1}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    .line 68
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-static {v1}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    .line 77
    .end local v0           #downloadedButton:Landroid/view/View;
    .end local v1           #marketButton:Landroid/widget/ImageView;
    .end local v2           #menuButton:Landroid/widget/ImageView;
    :cond_0
    const v3, 0x7f070066

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    .line 78
    return-void

    .line 63
    .restart local v0       #downloadedButton:Landroid/view/View;
    .restart local v1       #marketButton:Landroid/widget/ImageView;
    .restart local v2       #menuButton:Landroid/widget/ImageView;
    :cond_1
    iput-object v2, p0, Lcom/android/launcher2/MenuTabHost;->mMenuOrMarket:Landroid/view/View;

    .line 64
    invoke-static {v1}, Lcom/android/launcher2/MenuTabHost;->removeButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTabHost;->getChildCount()I

    move-result v1

    .line 123
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuTabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 128
    .local v3, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 123
    .end local v3           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 290
    return-void
.end method
