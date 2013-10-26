.class public Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ContextualPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContextualPageTitleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ContextualPageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;->this$0:Lcom/android/launcher2/ContextualPageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ContextualPageSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;->this$0:Lcom/android/launcher2/ContextualPageManager;

    #getter for: Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v1}, Lcom/android/launcher2/ContextualPageManager;->access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 550
    return-void
.end method
