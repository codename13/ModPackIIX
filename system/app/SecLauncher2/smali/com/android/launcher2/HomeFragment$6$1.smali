.class Lcom/android/launcher2/HomeFragment$6$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeFragment$6;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment$6;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$6$1;->this$1:Lcom/android/launcher2/HomeFragment$6;

    iput-object p2, p0, Lcom/android/launcher2/HomeFragment$6$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$6$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 1113
    return-void
.end method
