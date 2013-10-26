.class public Lcom/android/launcher2/DrawGLFunction;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DrawGLFunction$Callback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static call(Landroid/view/HardwareCanvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 1
    .parameter "canvas"
    .parameter "callback"

    .prologue
    .line 35
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction;->create(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    #setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I

    .line 38
    :cond_0
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)Z

    .line 39
    return-void
.end method

.method static native create(Lcom/android/launcher2/DrawGLFunction$Callback;)I
.end method

.method static native destroy(I)V
.end method

.method public static destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 54
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    #getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(I)V

    .line 57
    :cond_0
    const/4 v0, 0x0

    #setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I
    invoke-static {p0, v0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I

    .line 58
    return-void
.end method
