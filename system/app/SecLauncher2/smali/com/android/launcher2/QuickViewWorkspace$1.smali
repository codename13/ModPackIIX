.class Lcom/android/launcher2/QuickViewWorkspace$1;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 536
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Number;

    if-nez v7, :cond_1

    .line 562
    .end local v6           #tag:Ljava/lang/Object;
    :cond_0
    return-void

    .line 537
    .restart local v6       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v6, Ljava/lang/Number;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 538
    .local v5, index:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 542
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v7, v7, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v7, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 544
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v7}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 545
    .local v1, context:Landroid/content/Context;
    const v7, 0x7f0e0087

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 552
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    .line 553
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 554
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 555
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    .line 556
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 557
    .local v3, homeButton:Landroid/view/View;
    if-eq v3, p1, :cond_2

    instance-of v7, v3, Landroid/widget/CompoundButton;

    if-eqz v7, :cond_2

    .line 558
    check-cast v3, Landroid/widget/CompoundButton;

    .end local v3           #homeButton:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 553
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
