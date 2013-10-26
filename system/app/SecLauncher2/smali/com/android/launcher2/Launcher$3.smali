.class Lcom/android/launcher2/Launcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    .line 782
    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 783
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    .line 775
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->finishShowAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)V

    .line 778
    :cond_0
    return-void
.end method
