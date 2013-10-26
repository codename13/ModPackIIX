.class Lcom/android/launcher2/MenuAppsGrid$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;

.field final synthetic val$titleBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$5;->val$titleBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2376
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$5;->val$titleBar:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2377
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2378
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$5;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2379
    return-void
.end method
