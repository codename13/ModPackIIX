.class Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final STATE_NOT_IN_QUEUE:I = 0x0

.field private static final STATE_PAGE_SCROLLING:I = 0x1

.field private static final STATE_WAITING_TO_SCROLL:I = 0x2


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/launcher2/SmoothPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SmoothPagedView;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 342
    return-void
.end method

.method private postForScrollToComplete()V
    .locals 3

    .prologue
    .line 383
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    #getter for: Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    iget v1, v1, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    .line 387
    return-void
.end method


# virtual methods
.method public isWaitingtoScroll()Z
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postForScrollDelayed()V
    .locals 3

    .prologue
    .line 375
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    #getter for: Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    #getter for: Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I
    invoke-static {v1}, Lcom/android/launcher2/SmoothPagedView;->access$100(Lcom/android/launcher2/SmoothPagedView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    .line 379
    return-void
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    #getter for: Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    .line 400
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 346
    iget v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 350
    .local v0, oldState:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    .line 351
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    #getter for: Lcom/android/launcher2/SmoothPagedView;->mScrollState:I
    invoke-static {v1}, Lcom/android/launcher2/SmoothPagedView;->access$000(Lcom/android/launcher2/SmoothPagedView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 363
    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_1

    .line 366
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 367
    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
