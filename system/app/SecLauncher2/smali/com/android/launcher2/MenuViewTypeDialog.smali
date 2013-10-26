.class public Lcom/android/launcher2/MenuViewTypeDialog;
.super Landroid/app/DialogFragment;
.source "MenuViewTypeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuViewTypeDialog$1;
    }
.end annotation


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "MenuViewTypeDialog"


# instance fields
.field private final choices:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 17
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/MenuViewTypeDialog;->choices:[Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/MenuFragment$ViewType;Landroid/app/FragmentManager;)V
    .locals 5
    .parameter "viewType"
    .parameter "manager"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/android/launcher2/MenuViewTypeDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v1, Lcom/android/launcher2/MenuViewTypeDialog;

    invoke-direct {v1}, Lcom/android/launcher2/MenuViewTypeDialog;-><init>()V

    .line 27
    .local v1, df:Lcom/android/launcher2/MenuViewTypeDialog;
    const/4 v2, -0x1

    .line 28
    .local v2, selected:I
    sget-object v3, Lcom/android/launcher2/MenuViewTypeDialog$1;->$SwitchMap$com$android$launcher2$MenuFragment$ViewType:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuFragment$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 39
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "selected"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuViewTypeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string v3, "MenuViewTypeDialog"

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher2/MenuViewTypeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v0           #args:Landroid/os/Bundle;
    :pswitch_0
    const/4 v2, 0x0

    .line 31
    goto :goto_1

    .line 33
    :pswitch_1
    const/4 v2, 0x1

    .line 34
    goto :goto_1

    .line 36
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 50
    const-string v1, "MenuViewTypeDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 51
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 46
    const-string v0, "MenuViewTypeDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 84
    const/4 v2, -0x2

    if-eq p2, v2, :cond_1

    .line 86
    packed-switch p2, :pswitch_data_0

    .line 94
    sget-object v1, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 99
    .local v1, viewType:Lcom/android/launcher2/MenuFragment$ViewType;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuViewTypeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    .line 100
    .local v0, menu:Lcom/android/launcher2/MenuFragment;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 102
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    .end local v0           #menu:Lcom/android/launcher2/MenuFragment;
    .end local v1           #viewType:Lcom/android/launcher2/MenuFragment$ViewType;
    :cond_1
    return-void

    .line 88
    :pswitch_0
    sget-object v1, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 89
    .restart local v1       #viewType:Lcom/android/launcher2/MenuFragment$ViewType;
    goto :goto_0

    .line 91
    .end local v1           #viewType:Lcom/android/launcher2/MenuFragment$ViewType;
    :pswitch_1
    sget-object v1, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 92
    .restart local v1       #viewType:Lcom/android/launcher2/MenuFragment$ViewType;
    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/MenuViewTypeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher2/MenuViewTypeDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0e0082

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    iget-object v1, p0, Lcom/android/launcher2/MenuViewTypeDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0e0083

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 64
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/MenuViewTypeDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x7f0e0084

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/MenuViewTypeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, c:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuViewTypeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "selected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, selectedItem:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0081

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuViewTypeDialog;->choices:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0085

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
