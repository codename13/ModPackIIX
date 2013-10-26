.class public final Lcom/android/settings/easymode/EasyModeEnabler;
.super Ljava/lang/Object;
.source "EasyModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mOkDialog:Landroid/app/Dialog;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/easymode/EasyModeEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mCheck:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, easymodeState:I
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mCheck:Ljava/lang/Boolean;

    .line 112
    const-string v1, "EasyModeEnabler"

    const-string v2, "switch is on_1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeEnabler;->dismissDialog()V

    .line 115
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b75

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0b74

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$3;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$2;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    .line 135
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    if-nez p2, :cond_1

    if-ne v0, v4, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mCheck:Ljava/lang/Boolean;

    .line 140
    const-string v1, "EasyModeEnabler"

    const-string v2, "switch is off_1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeEnabler;->dismissDialog()V

    .line 143
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0b76

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$5;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/easymode/EasyModeEnabler$4;-><init>(Lcom/android/settings/easymode/EasyModeEnabler;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    .line 163
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 178
    :cond_0
    return-void
.end method
