.class Lcom/android/launcher2/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$2;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$2;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->onClickSearchButton(Landroid/view/View;)V

    .line 720
    return-void
.end method
