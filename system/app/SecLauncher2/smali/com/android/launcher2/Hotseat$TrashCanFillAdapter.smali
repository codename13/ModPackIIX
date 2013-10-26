.class Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Hotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashCanFillAdapter"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;-><init>(Lcom/android/launcher2/Hotseat;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->mCanceled:Z

    .line 696
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 697
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 699
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->mCanceled:Z

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const v1, 0x7f050015

    const-wide/16 v2, 0x64

    new-instance v4, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;

    iget-object v5, p0, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V

    #calls: Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Hotseat;->access$800(Lcom/android/launcher2/Hotseat;IJLandroid/animation/Animator$AnimatorListener;)V

    .line 692
    :cond_0
    return-void
.end method
