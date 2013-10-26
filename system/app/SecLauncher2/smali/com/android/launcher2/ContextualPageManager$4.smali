.class Lcom/android/launcher2/ContextualPageManager$4;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ContextualPageManager;->notificationGoContextualPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;

.field final synthetic val$cpType:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iput p2, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$cpType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$100(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iget v2, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$cpType:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 613
    return-void
.end method
