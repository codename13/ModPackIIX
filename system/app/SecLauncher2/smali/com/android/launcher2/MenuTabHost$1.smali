.class Lcom/android/launcher2/MenuTabHost$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuTabHost;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuTabHost;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/launcher2/MenuTabHost$1;->this$0:Lcom/android/launcher2/MenuTabHost;

    iput-object p2, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 163
    iget-object v1, p0, Lcom/android/launcher2/MenuTabHost$1;->this$0:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuTabHost;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, rootView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020011

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 166
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    iput-boolean v4, v1, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020011

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    iget-object v1, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/MenuTabHost$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 157
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    .line 159
    :cond_0
    return-void
.end method
