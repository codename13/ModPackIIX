.class public final Lcom/android/launcher2/MenuWidgetsFragment;
.super Landroid/app/Fragment;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
.implements Lcom/android/launcher2/MenuFragment$NeedsTabHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsFragment$3;
    }
.end annotation


# static fields
.field private static final WIDGET_SAVED_STATE:Ljava/lang/String; = "WIDGET_SAVED_STATE"

.field private static final WIDGET_STATE_BUNDLE:Ljava/lang/String; = "WIDGET_STATE_BUNDLE"


# instance fields
.field private mIsPaused:Z

.field private mPendingModelUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field private mWidgetStateBundle:Landroid/os/Bundle;

.field private mWidgets:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingModelUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private updatePinchListener()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public appModelUpdated()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingModelUpdate:Z

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->appModelUpdated()V

    goto :goto_0
.end method

.method public changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 212
    .local v0, oldState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eq p1, v0, :cond_0

    .line 213
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 214
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 215
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 219
    :cond_0
    return-void
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method public getTabHost()Lcom/android/launcher2/MenuTabHost;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/android/launcher2/MenuWidgetsFragment$3;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 140
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithAnimation()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 42
    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 44
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 45
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    new-instance v2, Lcom/android/launcher2/MenuWidgetsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuWidgetsFragment$1;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->post(Ljava/lang/Runnable;)Z

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 54
    if-eqz p3, :cond_3

    .line 55
    const-string v1, "WIDGET_SAVED_STATE"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, widgetSavedState:I
    if-ne v3, v0, :cond_2

    .line 57
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 61
    :goto_0
    const-string v1, "WIDGET_STATE_BUNDLE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 62
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 68
    .end local v0           #widgetSavedState:I
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->setTabHost(Lcom/android/launcher2/MenuTabHost;)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 73
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v1

    .line 59
    .restart local v0       #widgetSavedState:I
    :cond_2
    invoke-static {}, Lcom/android/launcher2/MenuWidgets$WidgetState;->values()[Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0

    .line 64
    .end local v0           #widgetSavedState:I
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v1, :cond_0

    .line 65
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 85
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onDestroyView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 87
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 88
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 152
    :cond_1
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 278
    return-void
.end method

.method public onHomePressed()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 157
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionSelectedSearch(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 113
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 114
    return-void
.end method

.method public onOptionSelectedUninstall(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 117
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 284
    return-void
.end method

.method public onPinch()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 293
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingModelUpdate:Z

    if-eqz v0, :cond_0

    .line 294
    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingModelUpdate:Z

    .line 295
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->appModelUpdated()V

    .line 297
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "WIDGET_SAVED_STATE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "WIDGET_STATE_BUNDLE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuTabHost;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showWidgetCling([I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    .line 244
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgetsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment$2;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onDivideMenuTab()V

    .line 274
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->onStop()V

    .line 102
    :cond_0
    return-void
.end method

.method public refreshWidgetStateModel()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 225
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->setTabHost(Lcom/android/launcher2/MenuTabHost;)V

    .line 110
    :cond_0
    return-void
.end method
