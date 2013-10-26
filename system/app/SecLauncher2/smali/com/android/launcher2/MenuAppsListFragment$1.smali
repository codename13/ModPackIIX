.class Lcom/android/launcher2/MenuAppsListFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsListFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    #getter for: Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsListFragment;->access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method
