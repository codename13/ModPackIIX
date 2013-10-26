.class public Lcom/android/launcher2/MenuFragment;
.super Landroid/app/Fragment;
.source "MenuFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuFragment$1;,
        Lcom/android/launcher2/MenuFragment$ViewType;,
        Lcom/android/launcher2/MenuFragment$NeedsTabHost;,
        Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;,
        Lcom/android/launcher2/MenuFragment$AppModelNotifications;
    }
.end annotation


# static fields
.field private static final EXTRA_TAB_TAG:Ljava/lang/String; = "extra_tab_tag"

.field public static final MENU_VIEW_TYPE_KEY:Ljava/lang/String; = "MenuFragment.ViewType"

.field private static final TAG:Ljava/lang/String; = "MenuFragment"


# instance fields
.field private mLoadWidgetTabOnCreate:Z

.field private mMaxItemsPerScreen:I

.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field public mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mTabManager:Lcom/android/launcher2/tabs/TabManager;

.field private mViewType:Lcom/android/launcher2/MenuFragment$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuFragment;->mLoadWidgetTabOnCreate:Z

    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 526
    .local v1, manager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 528
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    invoke-static {v0, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 533
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 534
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 535
    return-void

    .line 530
    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method private setAppNormalizer()V
    .locals 3

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    sget-object v1, Lcom/android/launcher2/MenuFragment$1;->$SwitchMap$com$android$launcher2$MenuFragment$ViewType:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 547
    :goto_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget v2, p0, Lcom/android/launcher2/MenuFragment;->mMaxItemsPerScreen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/MenuAppModel;->setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V

    .line 548
    return-void

    .line 541
    :pswitch_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 542
    goto :goto_0

    .line 545
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public appBadgeUpdated()V
    .locals 4

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 288
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 289
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_0

    .line 290
    check-cast v0, Lcom/android/launcher2/MenuFragment$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuFragment$AppModelNotifications;->appModelUpdated()V

    .line 294
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 280
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 281
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;->appBadgeUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 283
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public appModelLoaded()V
    .locals 4

    .prologue
    .line 265
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 266
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 267
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuFragment$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuFragment$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuFragment$AppModelNotifications;->appModelLoaded()V

    goto :goto_0

    .line 269
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public appModelUpdated()V
    .locals 4

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 273
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 274
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuFragment$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuFragment$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuFragment$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    .line 276
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 310
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 313
    :cond_0
    return-void
.end method

.method public chooseViewType()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuFragment$ViewType;Landroid/app/FragmentManager;)V

    .line 298
    return-void
.end method

.method public closeFolders()V
    .locals 4

    .prologue
    .line 558
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 559
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 560
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_0

    .line 561
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    goto :goto_0

    .line 563
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public enterAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 460
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 461
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_2

    .line 462
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 468
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 469
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 470
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 472
    :cond_1
    return-void

    .line 464
    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_2
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v2, :cond_0

    .line 465
    check-cast v0, Lcom/android/launcher2/MenuAppsListFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsListFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    goto :goto_0
.end method

.method public exitAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 495
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 496
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_2

    .line 497
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 503
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 504
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 505
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 508
    :cond_1
    return-void

    .line 499
    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_2
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v2, :cond_0

    .line 500
    check-cast v0, Lcom/android/launcher2/MenuAppsListFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppsListFragment;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 4

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 488
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    .line 489
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 476
    .local v0, wdgtTab:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 479
    :goto_0
    return-object v1

    .restart local v0       #wdgtTab:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQuickView()Lcom/android/launcher2/QuickViewMainMenu;
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 570
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewMainMenu;

    iput-object v1, p0, Lcom/android/launcher2/MenuFragment;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 573
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    return-object v1
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 333
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 336
    :goto_0
    return-object v1

    .restart local v0       #frag:Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public getViewType()Lcom/android/launcher2/MenuFragment$ViewType;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 4

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 341
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    .restart local v0       #frag:Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 350
    .local v0, currentFragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onBackPressed()Z

    move-result v1

    .line 353
    :goto_0
    return v1

    .restart local v0       #currentFragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.launcher2.prefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string v4, "MenuFragment.ViewType"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, savedMenuViewType:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    :cond_0
    const-string v4, "MenuFragment.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    .end local v3           #savedMenuViewType:Ljava/lang/String;
    :cond_1
    const-string v4, "MenuFragment.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuFragment$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0030

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0a0031

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuFragment;->mMaxItemsPerScreen:I

    .line 101
    invoke-direct {p0}, Lcom/android/launcher2/MenuFragment;->setAppNormalizer()V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f03003a

    const/4 v7, 0x0

    .line 106
    const v3, 0x7f030028

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuTabHost;

    iput-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    .line 108
    new-instance v3, Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v6, 0x1020011

    invoke-direct {v3, v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;-><init>(Landroid/app/Activity;Lcom/android/launcher2/MenuTabHost;I)V

    iput-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    .line 109
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v4, 0x1020013

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    .line 113
    .local v2, tabs:Landroid/widget/TabWidget;
    invoke-virtual {p1, v8, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, tabView:Landroid/widget/TextView;
    const v3, 0x7f0e002a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 116
    iget-object v4, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const-string v5, "APPS"

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v6, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v3, v6, :cond_0

    const-class v3, Lcom/android/launcher2/MenuAppsListFragment;

    :goto_0
    invoke-virtual {v4, v5, v3, v9}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p1, v8, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #tabView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 124
    .restart local v1       #tabView:Landroid/widget/TextView;
    const v3, 0x7f0e0004

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 126
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    iget-object v4, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const-string v5, "WIDGETS"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const-class v5, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    new-instance v4, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/tabs/TabManager;->setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 132
    iget-boolean v3, p0, Lcom/android/launcher2/MenuFragment;->mLoadWidgetTabOnCreate:Z

    if-eqz v3, :cond_1

    .line 133
    iput-boolean v7, p0, Lcom/android/launcher2/MenuFragment;->mLoadWidgetTabOnCreate:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    return-object v3

    .line 116
    :cond_0
    const-class v3, Lcom/android/launcher2/MenuAppsGridFragment;

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, prevTag:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 139
    const-string v3, "extra_tab_tag"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_2
    if-nez v0, :cond_3

    .line 143
    const-string v0, "APPS"

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDivideMenuTab()V
    .locals 14

    .prologue
    const v13, 0x7f07001a

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 153
    iget-object v7, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v8, 0x7f070019

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, downloadLayout:Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 157
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 158
    .local v3, iconWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    .local v0, dividerWidth:I
    const/4 v4, 0x0

    .line 162
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 163
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 164
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v7, v6, 0x3

    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v8, v6, 0x3

    invoke-direct {v7, v8, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, downloadIcon:Landroid/widget/TextView;
    const v7, 0x7f0e00a6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 177
    iget-object v7, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 180
    iget-object v7, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .end local v0           #dividerWidth:I
    .end local v1           #downloadIcon:Landroid/widget/TextView;
    .end local v3           #iconWidth:I
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #width:I
    :cond_1
    return-void

    .line 170
    .restart local v0       #dividerWidth:I
    .restart local v3       #iconWidth:I
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #width:I
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    sub-int v7, v6, v3

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v3, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .restart local v1       #downloadIcon:Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onExitAllApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    invoke-direct {p0}, Lcom/android/launcher2/MenuFragment;->closeViewTypeDialog()V

    .line 449
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 450
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    .line 451
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onExitAllApps()V

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 454
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 455
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onExitAllApps()V

    .line 457
    :cond_1
    return-void
.end method

.method public onFinishExitAllApps()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v0}, Lcom/android/launcher2/tabs/TabManager;->detachFragments()V

    .line 522
    return-void
.end method

.method public onHomePressed()Z
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 359
    .local v0, currentFragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    .line 360
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onHomePressed()Z

    move-result v1

    .line 362
    :goto_0
    return v1

    .restart local v0       #currentFragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionSelectedDownload()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 389
    .local v0, appsTab:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 391
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 392
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "MenuFragment.ViewType"

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/MenuFragment$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 394
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    const-string v3, "WIDGET"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v3, "GRID_WIDGET"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 403
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    move-object v3, v0

    .line 406
    check-cast v3, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    const-string v3, "WIDGET_LIST"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v3, "LIST_WIDGET"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 418
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 426
    check-cast v3, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 420
    :cond_3
    const-string v3, "LIST"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 423
    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 424
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_1
.end method

.method public onOptionSelectedSearch()V
    .locals 4

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 367
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 368
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedSearch(Lcom/android/launcher2/MenuTabHost;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 375
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 376
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedUninstall(Lcom/android/launcher2/MenuTabHost;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    .line 380
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 382
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 553
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "extra_tab_tag"

    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onShowAllApps()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v0}, Lcom/android/launcher2/tabs/TabManager;->attachFragments()V

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    iget-object v0, v0, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->enterAllStates()V

    .line 442
    return-void
.end method

.method public releaseShadows()V
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 317
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 318
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->releaseShadows()V

    .line 321
    :cond_0
    return-void
.end method

.method public selectAppsTab()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 218
    .local v0, currentFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIDGETS"

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 220
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 222
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void
.end method

.method public selectWidgetsTab()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuFragment;->mLoadWidgetTabOnCreate:Z

    goto :goto_0
.end method

.method public setDownloadIconEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, downloadLayout:Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    .local v1, downloadedIcon:Landroid/widget/TextView;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v2

    .line 194
    .local v2, enabled:Z
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_0
.end method

.method public setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V
    .locals 6
    .parameter "viewType"

    .prologue
    .line 229
    const-string v3, "MenuFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewType. old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v3, p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.launcher2.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 237
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "MenuFragment.ViewType"

    iget-object v4, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    invoke-direct {p0}, Lcom/android/launcher2/MenuFragment;->setAppNormalizer()V

    .line 243
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 246
    .local v1, frag:Landroid/app/Fragment;
    sget-object v3, Lcom/android/launcher2/MenuFragment$1;->$SwitchMap$com$android$launcher2$MenuFragment$ViewType:[I

    iget-object v4, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_2

    .line 250
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v1           #frag:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_0

    .line 252
    .restart local v1       #frag:Landroid/app/Fragment;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 257
    :pswitch_1
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsListFragment;

    if-nez v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/launcher2/MenuFragment;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
