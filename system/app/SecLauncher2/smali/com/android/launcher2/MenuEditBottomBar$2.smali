.class Lcom/android/launcher2/MenuEditBottomBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuEditBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBottomBar;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBottomBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBottomBar$2;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar$2;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar$2;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    return-void
.end method
