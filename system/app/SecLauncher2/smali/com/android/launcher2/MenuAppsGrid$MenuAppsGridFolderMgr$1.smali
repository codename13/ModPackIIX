.class Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->onFolderClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    return-void
.end method
