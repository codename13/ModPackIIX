.class Lcom/android/launcher2/DeleteDropTarget$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDropTarget;->startTrashCanFillUnfillAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDropTarget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDropTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteDropTarget;->setAnimating(Z)V

    .line 174
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteDropTarget;->setAnimating(Z)V

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeleteDropTarget;->setAnimating(Z)V

    .line 164
    return-void
.end method
