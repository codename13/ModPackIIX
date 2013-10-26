.class Lcom/android/launcher2/MenuEditBottomBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuEditBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBottomBar;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBottomBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBottomBar$1;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar$1;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuEditBottomBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 116
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar$1;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar$1;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    #getter for: Lcom/android/launcher2/MenuEditBottomBar;->mPagedView:Lcom/android/launcher2/PagedView;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBottomBar;->access$000(Lcom/android/launcher2/MenuEditBottomBar;)Lcom/android/launcher2/PagedView;

    move-result-object v0

    .line 118
    .local v0, pagedView:Lcom/android/launcher2/PagedView;
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->showPageIndicator(Z)V

    .line 120
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar$1;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 111
    return-void
.end method
