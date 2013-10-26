.class Lcom/android/launcher2/MenuWidgetsFragment$1;
.super Ljava/lang/Object;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    const-string v1, "onCreateView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
