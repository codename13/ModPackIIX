.class public Lcom/android/launcher2/HomeScreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomeScreenDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeScreenDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "Homescreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenDialogFragment;-><init>()V

    .line 33
    .local v0, f:Lcom/android/launcher2/HomeScreenDialogFragment;
    const-string v1, "Homescreen"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 41
    const-string v1, "Homescreen"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 42
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 37
    const-string v0, "Homescreen"

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 56
    .local v2, c:Landroid/content/Context;
    const v7, 0x7f030013

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 60
    .local v5, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e0014

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeScreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 64
    .local v3, dialog:Landroid/app/Dialog;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x7f030001

    invoke-direct {v0, v2, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 76
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    const v7, 0x7f070017

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 77
    .local v6, lvh:Landroid/widget/ListView;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    new-instance v7, Lcom/android/launcher2/HomeScreenDialogFragment$1;

    invoke-direct {v7, p0, v2}, Lcom/android/launcher2/HomeScreenDialogFragment$1;-><init>(Lcom/android/launcher2/HomeScreenDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    return-object v3

    .line 74
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #lvh:Landroid/widget/ListView;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1090003

    invoke-direct {v0, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_0
.end method
