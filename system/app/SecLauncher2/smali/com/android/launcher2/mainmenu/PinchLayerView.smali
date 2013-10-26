.class public Lcom/android/launcher2/mainmenu/PinchLayerView;
.super Landroid/widget/FrameLayout;
.source "PinchLayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

.field private mMovePinchStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 38
    iget-object v4, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 43
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v3, v4, v3

    float-to-int v0, v3

    .line 45
    .local v0, dx:I
    mul-int v3, v1, v1

    mul-int v4, v0, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mMovePinchStart:I

    goto :goto_0

    .line 49
    .end local v0           #dx:I
    .end local v1           #dy:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 52
    .restart local v1       #dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 53
    .restart local v0       #dx:I
    iget v4, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mMovePinchStart:I

    mul-int v5, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 55
    .local v2, pinchDelta:I
    const/16 v4, 0x2710

    if-le v2, v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    invoke-interface {v4}, Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;->onPinch()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    .line 34
    return-void
.end method
