.class Lcom/android/launcher2/MenuWidgets$2$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuWidgets$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$2;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$2$1;->this$1:Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$2$1;->this$1:Lcom/android/launcher2/MenuWidgets$2;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$2$1;->this$1:Lcom/android/launcher2/MenuWidgets$2;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$102(Lcom/android/launcher2/MenuWidgets;Z)Z

    .line 313
    return-void
.end method
