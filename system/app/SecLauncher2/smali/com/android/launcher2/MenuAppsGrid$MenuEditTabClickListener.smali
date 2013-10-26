.class public Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuEditTabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 2733
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2735
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5100(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2736
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2737
    .local v0, fragMgr:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2755
    .end local v0           #fragMgr:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 2740
    .restart local v0       #fragMgr:Landroid/app/FragmentManager;
    :sswitch_0
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2741
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 2742
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 2746
    :sswitch_1
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->editIsDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2747
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 2749
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->revertEditChanges()V

    .line 2750
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 2737
    :sswitch_data_0
    .sparse-switch
        0x7f07003f -> :sswitch_0
        0x7f070050 -> :sswitch_0
        0x7f070069 -> :sswitch_1
    .end sparse-switch
.end method
