.class Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAppsGridFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 0
    .parameter
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 275
    iput-boolean p3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    .line 276
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 281
    .local v0, duration:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 282
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 292
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Folder;->removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2, v5}, Lcom/android/launcher2/MenuAppsGrid;->access$102(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    .line 297
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 299
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 307
    :cond_1
    return-void

    .line 280
    .end local v0           #duration:I
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    :cond_2
    const/16 v0, 0xfa

    goto/16 :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 311
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 312
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 317
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 319
    .local v2, targetAlpha:F
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 320
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iget v0, v3, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 322
    .local v0, duration:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 329
    .end local v0           #duration:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 330
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 332
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 338
    :cond_0
    return-void

    .line 321
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    const/16 v0, 0xfa

    goto :goto_0

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuTabHost;->mMenuTabHostDarken:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 348
    return-void
.end method
