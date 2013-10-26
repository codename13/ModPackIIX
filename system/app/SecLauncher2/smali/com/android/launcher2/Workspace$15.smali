.class Lcom/android/launcher2/Workspace$15;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2796
    iput-object p1, p0, Lcom/android/launcher2/Workspace$15;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/launcher2/Workspace$15;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    .line 2800
    return-void
.end method
