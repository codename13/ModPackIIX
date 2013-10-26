.class Lcom/android/launcher2/Launcher$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitAllApps(Z)V
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
    .line 836
    iput-object p1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mCancelled:Z

    .line 847
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mCancelled:Z

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->finishExitAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$800(Lcom/android/launcher2/Launcher;)V

    .line 843
    :cond_0
    return-void
.end method
