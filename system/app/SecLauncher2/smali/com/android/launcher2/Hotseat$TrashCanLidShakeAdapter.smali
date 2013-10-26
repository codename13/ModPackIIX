.class Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Hotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashCanLidShakeAdapter"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;-><init>(Lcom/android/launcher2/Hotseat;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->mCanceled:Z

    .line 682
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->mCanceled:Z

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const v1, 0x7f050012

    const-wide/16 v2, 0x3c

    new-instance v4, Lcom/android/launcher2/Hotseat$TrashCanLidDownAdapter;

    iget-object v5, p0, Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/Hotseat$TrashCanLidDownAdapter;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V

    #calls: Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Hotseat;->access$800(Lcom/android/launcher2/Hotseat;IJLandroid/animation/Animator$AnimatorListener;)V

    .line 678
    :cond_0
    return-void
.end method
