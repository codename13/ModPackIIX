.class Lcom/android/launcher2/AddToHomescreenDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 95
    packed-switch p3, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFragment;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
