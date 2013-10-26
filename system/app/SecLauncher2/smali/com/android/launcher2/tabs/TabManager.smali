.class public Lcom/android/launcher2/tabs/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;,
        Lcom/android/launcher2/tabs/TabManager$TabInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "TabManager"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainerId:I

.field private mEndTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

.field private final mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/launcher2/MenuTabHost;I)V
    .locals 2
    .parameter "activity"
    .parameter "tabHost"
    .parameter "containerId"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    .line 51
    iput p3, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTabHost;->setMotionEventSplittingEnabled(Z)V

    .line 56
    return-void
.end method

.method private onAddTab(Landroid/app/Fragment;)V
    .locals 2
    .parameter "frag"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 286
    check-cast v0, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-interface {v0, v1}, Lcom/android/launcher2/MenuFragment$NeedsTabHost;->setTabHost(Lcom/android/launcher2/MenuTabHost;)V

    .line 287
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    check-cast p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuFragment$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuFragment$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    goto :goto_0
.end method

.method private onHideTab(Landroid/app/Fragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuFragment$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 276
    :cond_0
    return-void
.end method

.method private onShowTab(Landroid/app/Fragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    if-eqz v0, :cond_0

    .line 280
    check-cast p1, Lcom/android/launcher2/MenuFragment$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuFragment$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 66
    new-instance v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 71
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 72
    .local v1, fragManager:Landroid/app/FragmentManager;
    iget-object v3, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2, v3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 73
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 79
    :cond_0
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 82
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/MenuTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 84
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    .line 85
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 87
    .local v0, endTabIndex:I
    if-lez v0, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    .end local v0           #endTabIndex:I
    :cond_2
    return-void
.end method

.method public attachFragments()V
    .locals 4

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 228
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    .line 229
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v2, v3, :cond_0

    .line 230
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 231
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 235
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 237
    :goto_1
    return-void

    .line 236
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .parameter "tabId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 183
    .local v2, tab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v2, p2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$102(Lcom/android/launcher2/tabs/TabManager$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;

    .line 184
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 186
    .local v1, newFrag:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    iget-object v5, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 189
    .local v0, ft:Landroid/app/FragmentTransaction;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 194
    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2, v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 195
    invoke-direct {p0, v1}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 197
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v1           #newFrag:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public detachFragments()V
    .locals 4

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 206
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    .line 207
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v2, v3, :cond_0

    .line 208
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 218
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 219
    return-void
.end method

.method public getCurrentlyShownFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "tabId"

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;
    .locals 5
    .parameter "tabId"
    .parameter "createFragmentIfNeccessary"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 156
    .local v0, tab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 163
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 165
    :cond_0
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public getTabInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 8
    .parameter "tabId"

    .prologue
    .line 99
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 100
    .local v4, newTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v5, v4, :cond_8

    .line 101
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 102
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 106
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher2/tabs/TabManager;->onHideTab(Landroid/app/Fragment;)V

    .line 109
    :cond_0
    if-eqz v4, :cond_9

    .line 110
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_4

    .line 111
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v5

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4, v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 112
    iget v5, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 113
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 114
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "TabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTabChanged() adding class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " obj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    :goto_0
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v5, :cond_7

    .line 124
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    .line 125
    .local v3, mag:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v3, :cond_6

    .line 126
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_2

    const-string v5, "TabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTabChanged() menu pages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 128
    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 129
    .local v0, clm:Lcom/android/launcher2/CellLayoutMenu;
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string v5, "TabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTabChanged() Page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contains item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v0           #clm:Lcom/android/launcher2/CellLayoutMenu;
    .end local v2           #idx:I
    .end local v3           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_4
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Fragment;->isDetached()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 119
    :cond_5
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 120
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher2/tabs/TabManager;->onShowTab(Landroid/app/Fragment;)V

    .line 121
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "TabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTabChanged() show fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    .restart local v3       #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_6
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_7

    const-string v5, "TabManager"

    const-string v6, "onTabChanged() no MenuAppsGrid!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v3           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_7
    :goto_2
    iput-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 142
    iget-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 143
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 148
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_8
    :goto_3
    return-void

    .line 136
    .restart local v1       #ft:Landroid/app/FragmentTransaction;
    :cond_9
    sget-boolean v5, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_7

    const-string v5, "TabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTabChanged() no tab for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 145
    :cond_a
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_3
.end method

.method public setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2
    .parameter "endTabKeyListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 62
    return-void
.end method
