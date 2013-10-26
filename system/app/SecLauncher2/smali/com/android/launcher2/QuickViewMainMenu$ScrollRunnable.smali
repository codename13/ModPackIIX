.class Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher2/QuickViewMainMenu;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/QuickViewMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/QuickViewMainMenu;Lcom/android/launcher2/QuickViewMainMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 680
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickView;->mScrollX:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$100(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickView;->mScrollY:I
    invoke-static {v2}, Lcom/android/launcher2/QuickViewMainMenu;->access$200(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    iput v3, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 687
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickView;->mScrollX:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickView;->mScrollY:I
    invoke-static {v2}, Lcom/android/launcher2/QuickViewMainMenu;->access$500(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    #getter for: Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 690
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    .line 691
    return-void
.end method
