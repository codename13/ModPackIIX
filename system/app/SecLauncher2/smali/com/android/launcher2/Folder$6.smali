.class Lcom/android/launcher2/Folder$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    #calls: Lcom/android/launcher2/Folder;->onCloseComplete()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$300(Lcom/android/launcher2/Folder;)V

    .line 812
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 813
    return-void
.end method
