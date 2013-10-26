.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 0
    .parameter
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2282
    iput-object p2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 2283
    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    .line 2284
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2288
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v1

    iget v0, v1, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 2289
    .local v0, duration:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2290
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2300
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #setter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1, v4}, Lcom/android/launcher2/Workspace;->access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    .line 2302
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 2304
    :cond_0
    return-void

    .line 2288
    .end local v0           #duration:I
    :cond_1
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2308
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2309
    const-string v3, "Launcher.Workspace"

    const-string v4, "home fragment was null trying to open folder?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v0

    .line 2314
    .local v0, darkenLayer:Landroid/view/View;
    if-nez v0, :cond_2

    .line 2316
    const-string v3, "Launcher.Workspace"

    const-string v4, "darken layer was null trying to open folder?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2320
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2321
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2327
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2328
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 2330
    .local v2, targetAlpha:F
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iget v1, v3, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 2331
    .local v1, duration:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2332
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_4

    .line 2333
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2334
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2340
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2341
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    .line 2330
    .end local v1           #duration:I
    :cond_3
    const/16 v1, 0xfa

    goto :goto_1

    .line 2338
    .restart local v1       #duration:I
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 2352
    return-void
.end method
