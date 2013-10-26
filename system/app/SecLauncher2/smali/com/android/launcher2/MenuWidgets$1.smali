.class Lcom/android/launcher2/MenuWidgets$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->appModelUpdated()V
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
    .line 243
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$1;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$1;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "appModelUpdated"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 247
    return-void
.end method
