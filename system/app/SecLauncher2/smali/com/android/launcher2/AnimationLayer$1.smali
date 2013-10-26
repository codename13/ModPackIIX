.class Lcom/android/launcher2/AnimationLayer$1;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AnimationLayer;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindWidgetsAfterConfigChange()V

    .line 63
    return-void
.end method
