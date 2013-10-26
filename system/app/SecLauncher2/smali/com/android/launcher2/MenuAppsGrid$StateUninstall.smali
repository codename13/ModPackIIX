.class Lcom/android/launcher2/MenuAppsGrid$StateUninstall;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUninstall"
.end annotation


# instance fields
.field private mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method private isUninstallable(Lcom/android/launcher2/AppItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1570
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .parameter "oldState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1500
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1501
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View;

    move-result-object v5

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_0
    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Landroid/view/View;Z)V
    invoke-static {v4, v5, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;Z)V

    .line 1503
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200a7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v4, :cond_2

    :goto_1
    #calls: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Z)V
    invoke-static {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 1511
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1512
    .local v0, mBackButton:Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 1513
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    return-void

    .end local v0           #mBackButton:Landroid/view/View;
    :cond_1
    move v1, v3

    .line 1501
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1508
    goto :goto_1
.end method

.method public enterItems(Ljava/lang/Iterable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1551
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1552
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    .line 1553
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->isUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1554
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .end local v1           #view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1558
    :cond_1
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    .line 1533
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1534
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    .line 1540
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3200()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3300()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2800(Lcom/android/launcher2/MenuAppsGrid;Landroid/animation/Animator;)V

    .line 1546
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItems(Ljava/lang/Iterable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1563
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    .line 1564
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .end local v1           #view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1567
    :cond_1
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1487
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1488
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->isUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 1495
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
