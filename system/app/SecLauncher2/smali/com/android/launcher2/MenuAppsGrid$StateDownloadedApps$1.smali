.class Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1593
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1595
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1596
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->animateNormalTitleBarVisibility(Z)V

    .line 1597
    const-string v2, "WIDGET"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1599
    const-string v2, "WIDGET"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1600
    const-string v2, "GRID_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1602
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 1620
    :goto_0
    return-void

    .line 1604
    :cond_0
    const-string v2, "LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1605
    const-string v2, "LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1607
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 1608
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_0

    .line 1609
    :cond_1
    const-string v2, "WIDGET_LIST"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1610
    const-string v2, "WIDGET_LIST"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1611
    const-string v2, "LIST_WIDGET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1613
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 1614
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto :goto_0

    .line 1617
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
