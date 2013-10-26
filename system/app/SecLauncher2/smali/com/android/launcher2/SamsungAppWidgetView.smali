.class public Lcom/android/launcher2/SamsungAppWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungAppWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/SamsungAppWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mLastTouch:[I

    .line 50
    invoke-direct {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SamsungAppWidgetView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SamsungAppWidgetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SamsungAppWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/SamsungAppWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/SamsungAppWidgetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;-><init>(Lcom/android/launcher2/SamsungAppWidgetView;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/SamsungAppWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 142
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, arg0:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dumpSamsungWidgetAppInfo()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "SamsungAppWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method public getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget-boolean v2, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_0

    .line 75
    iput-boolean v1, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 105
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 105
    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 84
    iget-object v2, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/SamsungAppWidgetView;->postCheckForLongClick()V

    goto :goto_1

    .line 91
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/launcher2/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    :cond_2
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    .line 97
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
