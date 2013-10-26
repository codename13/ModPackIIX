.class Lcom/android/launcher2/HomeFragment$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$CPType:I

.field final synthetic val$isToCP:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$11;->this$0:Lcom/android/launcher2/HomeFragment;

    iput p2, p0, Lcom/android/launcher2/HomeFragment$11;->val$CPType:I

    iput-boolean p3, p0, Lcom/android/launcher2/HomeFragment$11;->val$isToCP:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$11;->this$0:Lcom/android/launcher2/HomeFragment;

    iget v1, p0, Lcom/android/launcher2/HomeFragment$11;->val$CPType:I

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment$11;->val$isToCP:Z

    const/4 v3, 0x1

    #calls: Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->access$1500(Lcom/android/launcher2/HomeFragment;IZZ)V

    .line 2753
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2754
    return-void
.end method
