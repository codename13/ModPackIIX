.class Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDownloadedApps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1574
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 5
    .parameter "oldState"

    .prologue
    const v4, 0x7f07004e

    const/4 v3, 0x0

    .line 1669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1670
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1673
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$4500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4402(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1679
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1693
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1695
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Landroid/view/View;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;Z)V

    .line 1697
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData(I)V

    .line 1700
    :cond_1
    return-void

    .line 1675
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4402(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1676
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4502(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    goto :goto_0

    .line 1687
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1705
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :goto_0
    return-void

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1715
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

    move-result-object v1

    .line 1716
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 1717
    .local v0, itemCount:I
    :goto_0
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateDownloadedApps::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return-object v1

    .line 1716
    .end local v0           #itemCount:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1636
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1639
    .local v1, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 1641
    const-string v2, "WIDGET"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1642
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1643
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIDGET"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1644
    const-string v2, "GRID_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1646
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 1665
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1648
    :cond_0
    const-string v2, "LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1650
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1651
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1652
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 1653
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_0

    .line 1654
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v2, "WIDGET_LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1655
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1656
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIDGET_LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1657
    const-string v2, "LIST_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1659
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 1660
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto :goto_0

    .line 1663
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1584
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1586
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1587
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1589
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;)V

    .line 1623
    .local v1, onFinishAnimationRunnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v2, p2, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1629
    const/4 v2, 0x1

    return v2
.end method
