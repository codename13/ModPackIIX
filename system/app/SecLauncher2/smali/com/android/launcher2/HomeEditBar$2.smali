.class Lcom/android/launcher2/HomeEditBar$2;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->newPage(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;

.field final synthetic val$pageId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    iput p2, p0, Lcom/android/launcher2/HomeEditBar$2;->val$pageId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 586
    .local v1, ws:Lcom/android/launcher2/Workspace;
    iget v2, p0, Lcom/android/launcher2/HomeEditBar$2;->val$pageId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 587
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v0, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 588
    .local v0, hf:Lcom/android/launcher2/HomeFragment;
    iget v2, p0, Lcom/android/launcher2/HomeEditBar$2;->val$pageId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    .line 589
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageSwitchListener()Lcom/android/launcher2/PagedView$PageSwitchListener;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeEditBar$2;->val$pageId:I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/HomeEditBar$2;->val$pageId:I

    invoke-interface {v2, v3, v4}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 590
    return-void
.end method
