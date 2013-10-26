.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->onFolderClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;->this$1:Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    :cond_0
    return-void
.end method
