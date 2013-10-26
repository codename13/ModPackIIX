.class Lcom/android/launcher2/MenuEditBottomBar$3;
.super Ljava/lang/Object;
.source "MenuEditBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBottomBar;->newFolder(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBottomBar;

.field final synthetic val$dragState:Lcom/android/launcher2/DragState;

.field final synthetic val$menuFragment:Lcom/android/launcher2/MenuFragment;

.field final synthetic val$newFolder:Lcom/android/launcher2/AppFolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBottomBar;Lcom/android/launcher2/MenuFragment;Lcom/android/launcher2/AppFolderItem;Lcom/android/launcher2/DragState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    iput-object p2, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    iput-object p3, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$newFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object p4, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$dragState:Lcom/android/launcher2/DragState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 271
    const-string v4, "MenuEditBottomBar"

    const-string v5, "newFolder appModelUpdated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 274
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    .line 275
    .local v2, m:Lcom/android/launcher2/MenuAppsGrid;
    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$newFolder:Lcom/android/launcher2/AppFolderItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 277
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$newFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    .line 279
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 281
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar$3;->val$dragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)V

    goto :goto_0
.end method
