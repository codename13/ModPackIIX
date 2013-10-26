.class Lcom/android/launcher2/MenuWidgetsFragment$2;
.super Ljava/lang/Object;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuTabHost;)V
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
    .line 246
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v3

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 259
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    .line 266
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    #getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
