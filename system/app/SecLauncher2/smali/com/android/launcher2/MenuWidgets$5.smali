.class Lcom/android/launcher2/MenuWidgets$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->animateNormalTitleBarVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;

.field final synthetic val$l:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    iput-object p2, p0, Lcom/android/launcher2/MenuWidgets$5;->val$l:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->val$l:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1400
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1401
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->val$l:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1395
    return-void
.end method
