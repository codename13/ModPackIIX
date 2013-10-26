.class Lcom/android/launcher2/MenuWidgets$2;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->runFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateModel()V

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgets$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$2$1;-><init>(Lcom/android/launcher2/MenuWidgets$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 315
    return-void
.end method
