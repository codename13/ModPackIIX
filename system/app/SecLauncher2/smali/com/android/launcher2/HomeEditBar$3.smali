.class Lcom/android/launcher2/HomeEditBar$3;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->onAnimationEnd(Landroid/animation/Animator;)V
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
    .line 635
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    #getter for: Lcom/android/launcher2/HomeEditBar;->mHideBarAnim:I
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$3;->this$0:Lcom/android/launcher2/HomeEditBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 642
    return-void
.end method
