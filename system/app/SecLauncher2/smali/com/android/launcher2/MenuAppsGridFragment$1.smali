.class Lcom/android/launcher2/MenuAppsGridFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGridFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 424
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v4

    .line 425
    .local v4, isMenuShown:Z
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    .line 426
    .local v3, isMenuExiting:Z
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v10

    .line 432
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 437
    .local v5, prefs:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 439
    .local v1, fragManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 440
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v6

    if-nez v6, :cond_2

    .line 441
    invoke-static {v2, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 445
    .end local v1           #fragManager:Landroid/app/FragmentManager;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const-string v6, "GRID_WIDGET"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "GRID_WIDGET"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    const-string v7, "MenuFragment.ViewType"

    sget-object v8, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuFragment$ViewType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/MenuFragment$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v7

    #setter for: Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;
    invoke-static {v6, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$202(Lcom/android/launcher2/MenuAppsGridFragment;Lcom/android/launcher2/MenuFragment$ViewType;)Lcom/android/launcher2/MenuFragment$ViewType;

    .line 452
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 453
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 454
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 467
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 470
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/MenuAppsGridFragment$1$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment$1;)V

    sget-wide v8, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    .line 491
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    .line 456
    :cond_3
    const-string v6, "LIST_WIDGET"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 457
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 458
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "LIST_WIDGET"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    const-string v6, "TEST2"

    const-string v7, "LIST_WIDGET onshow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_1

    .line 480
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 481
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    const/4 v7, 0x0

    #setter for: Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;
    invoke-static {v6, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$302(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2
.end method
