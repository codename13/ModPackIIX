.class Lcom/android/launcher2/MenuAppsGrid$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$4;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$4;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 2268
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$4;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 2263
    return-void
.end method
