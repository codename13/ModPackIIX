.class Lcom/android/launcher2/AnimationLayer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$2;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$2;->this$0:Lcom/android/launcher2/AnimationLayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/AnimationLayer;->access$002(Lcom/android/launcher2/AnimationLayer;Z)Z

    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$2;->this$0:Lcom/android/launcher2/AnimationLayer;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/AnimationLayer;->access$002(Lcom/android/launcher2/AnimationLayer;Z)Z

    .line 202
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$2;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->access$102(Lcom/android/launcher2/AnimationLayer;J)J

    .line 203
    return-void
.end method
