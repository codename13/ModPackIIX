.class Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateUninstall"
.end annotation


# instance fields
.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .parameter "oldState"

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 1073
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1076
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1078
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1079
    .local v0, mBackButton:Landroid/view/View;
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;-><init>(Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    .end local v0           #mBackButton:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1087
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->refreshModel()V

    .line 1091
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 1095
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1096
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1101
    .local v2, page:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_1

    .line 1102
    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1099
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1105
    .end local v1           #j:I
    .end local v2           #page:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_2
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    invoke-static {v0, p1}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public refreshModel()V
    .locals 7

    .prologue
    .line 1114
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 1115
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1116
    .local v3, page:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1117
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    .line 1118
    .local v5, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1119
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 1120
    check-cast v1, Lcom/android/launcher2/HomePendingItem;

    .line 1121
    .local v1, item:Lcom/android/launcher2/HomePendingItem;
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    invoke-static {v6, v1}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1125
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1116
    .end local v1           #item:Lcom/android/launcher2/HomePendingItem;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1128
    .restart local v1       #item:Lcom/android/launcher2/HomePendingItem;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1114
    .end local v1           #item:Lcom/android/launcher2/HomePendingItem;
    .end local v4           #tag:Ljava/lang/Object;
    .end local v5           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1133
    .end local v2           #j:I
    .end local v3           #page:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_3
    return-void
.end method
