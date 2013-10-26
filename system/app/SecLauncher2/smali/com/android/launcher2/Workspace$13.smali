.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1605
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1608
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 1609
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 1610
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 1602
    return-void
.end method
