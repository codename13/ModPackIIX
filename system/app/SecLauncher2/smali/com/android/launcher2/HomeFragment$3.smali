.class Lcom/android/launcher2/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFragment;
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
    .line 777
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$3;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$3;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$3;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 784
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
