.class Lcom/android/launcher2/HomeScreenDialogFragment$1;
.super Ljava/lang/Object;
.source "HomeScreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenDialogFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->val$c:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss()V

    .line 85
    packed-switch p3, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->val$c:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2, p3}, Lcom/android/launcher2/HomeFragment;->startWallpaper(I)V

    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sec.android.launcher2.intent.action.LOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, chooserBothWallpaper:Landroid/content/Intent;
    const-string v2, "both"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    .end local v1           #chooserBothWallpaper:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.android.launcher2.intent.action.LOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, chooser:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$1;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
