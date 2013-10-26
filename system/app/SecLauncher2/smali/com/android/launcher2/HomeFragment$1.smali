.class Lcom/android/launcher2/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->onHomePressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$1;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$1;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$1;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HomeFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$1$1;-><init>(Lcom/android/launcher2/HomeFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 647
    return-void
.end method
