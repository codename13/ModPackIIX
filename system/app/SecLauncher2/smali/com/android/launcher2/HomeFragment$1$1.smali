.class Lcom/android/launcher2/HomeFragment$1$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeFragment$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$1$1;->this$1:Lcom/android/launcher2/HomeFragment$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$1$1;->this$1:Lcom/android/launcher2/HomeFragment$1;

    iget-object v0, v0, Lcom/android/launcher2/HomeFragment$1;->this$0:Lcom/android/launcher2/HomeFragment;

    #calls: Lcom/android/launcher2/HomeFragment;->performOnHomePressed()V
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$200(Lcom/android/launcher2/HomeFragment;)V

    .line 645
    return-void
.end method
