.class Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Hotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashCanUnfillAdapter"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;-><init>(Lcom/android/launcher2/Hotseat;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->mCanceled:Z

    .line 727
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 728
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 741
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->mCanceled:Z

    if-nez v0, :cond_1

    .line 707
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_2

    .line 708
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 721
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const v1, 0x7f050010

    const-wide/16 v2, 0x64

    new-instance v4, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;

    iget-object v5, p0, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V

    #calls: Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Hotseat;->access$800(Lcom/android/launcher2/Hotseat;IJLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
