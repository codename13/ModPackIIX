.class Lcom/android/launcher2/HomeEditBar$1;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    #setter for: Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar;->access$002(Lcom/android/launcher2/HomeEditBar;Z)Z

    .line 325
    return-void
.end method
