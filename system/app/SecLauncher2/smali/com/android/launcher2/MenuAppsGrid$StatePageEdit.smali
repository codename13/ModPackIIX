.class public Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
.implements Lcom/android/launcher2/MenuAppsGrid$StateObj$ResumableState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1987
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 5
    .parameter "oldState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2073
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2075
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getQuickView()Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 2077
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v3, 0x7f0e0089

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2080
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->hidePageIndicator(Z)V

    .line 2082
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 2083
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2084
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v0

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 2085
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v0, :cond_3

    .line 2086
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2087
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 2092
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v1, v0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 2093
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 2094
    return-void

    :cond_1
    move v0, v2

    .line 2080
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2084
    goto :goto_1

    .line 2089
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 2090
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setNormalTitleBarVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic enterItems(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItems(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x0

    .line 2098
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2099
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :goto_0
    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2103
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 2104
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    .line 2105
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2106
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v1, v0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    goto :goto_0
.end method

.method public bridge synthetic exitItems(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItems(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exitWithAnimaton()V
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2116
    :goto_0
    return-void

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2114
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 2115
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2119
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2133
    :goto_0
    return-void

    .line 2123
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2124
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 2125
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 2126
    .local v0, curPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2127
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 2129
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    .line 2130
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setNormalTitleBarVisibility(I)V

    .line 2131
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2132
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->updateVisiblePages()Z

    goto :goto_0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 1987
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 2020
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v1

    .line 2021
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2022
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getLocationOnScreen([I)V

    .line 2016
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getTitleBarHight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public movePage(II)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 2011
    return-void
.end method

.method public onAppModelUpdated()V
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2147
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1995
    const/4 v0, 0x0

    return v0
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    .line 2056
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2058
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2049
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 2050
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2051
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4800(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2068
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4800(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2063
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 2140
    :cond_0
    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1987
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1987
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 3

    .prologue
    .line 2037
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2039
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 2040
    .local v1, numPages:I
    const/4 v0, 0x0

    .local v0, curPage:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2041
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutMenu;->updateAllItemsToScreen(I)V

    .line 2040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2044
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2045
    return-void
.end method

.method updateQuickView()V
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 2152
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 2154
    :cond_0
    return-void
.end method
