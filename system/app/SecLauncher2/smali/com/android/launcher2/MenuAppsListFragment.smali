.class public final Lcom/android/launcher2/MenuAppsListFragment;
.super Landroid/app/Fragment;
.source "MenuAppsListFragment.java"

# interfaces
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/MenuFragment$NeedsTabHost;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuAppsListFragment"


# instance fields
.field private mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

.field private mNormalTitleBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->appModelUpdated()V

    .line 125
    return-void
.end method

.method public appModelUpdated()V
    .locals 5

    .prologue
    .line 129
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    if-eqz v4, :cond_1

    .line 130
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v3, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 134
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    .line 136
    .local v2, menuFragment:Lcom/android/launcher2/MenuFragment;
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    .line 139
    .end local v2           #menuFragment:Lcom/android/launcher2/MenuFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, mainView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 141
    check-cast v1, Lcom/android/launcher2/AlphabeticalListContainer;

    .end local v1           #mainView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListContainer;->notifyDataChanged()V

    .line 145
    .end local v0           #launcher:Lcom/android/launcher2/Launcher;
    .end local v3           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 118
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    const-string v1, "MenuAppsListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate. savedInstanceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    .line 35
    return-void

    .line 32
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 48
    const-string v3, "MenuAppsListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_2

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const v2, 0x7f030021

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListContainer;

    .line 52
    .local v1, v:Lcom/android/launcher2/AlphabeticalListContainer;
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListContainer;->setAdapter(Lcom/android/launcher2/MenuAppsListAdapter;)V

    .line 58
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 60
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->onDivideMenuTab()V

    .line 69
    return-object v1

    .line 48
    .end local v0           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v1           #v:Lcom/android/launcher2/AlphabeticalListContainer;
    :cond_2
    const-string v2, "not null"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 85
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 108
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 112
    :goto_0
    return v3

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onHideTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 191
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 91
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 102
    .end local v0           #item:Lcom/android/launcher2/AppItem;
    :goto_0
    return v1

    .line 94
    .restart local v0       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move v1, v2

    .line 95
    goto :goto_0

    .line 98
    .end local v0           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 99
    new-instance v1, Lcom/android/launcher2/ShadowBuilder;

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-static {p2, v3, v4}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {p2, v1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public onShowTab(Lcom/android/launcher2/MenuTabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    const v5, 0x7f070019

    const/4 v4, 0x0

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, downloadedIcon:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 152
    const v3, 0x7f07001a

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {p1, v5}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {p1, v5}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/MenuAppsListFragment$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsListFragment$1;-><init>(Lcom/android/launcher2/MenuAppsListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 181
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    .line 183
    .local v2, menuFragment:Lcom/android/launcher2/MenuFragment;
    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->onDivideMenuTab()V

    .line 186
    .end local v2           #menuFragment:Lcom/android/launcher2/MenuFragment;
    :cond_3
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0
.end method
