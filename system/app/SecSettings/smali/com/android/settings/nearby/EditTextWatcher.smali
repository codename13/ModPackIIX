.class public Lcom/android/settings/nearby/EditTextWatcher;
.super Ljava/lang/Object;
.source "EditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    .line 23
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "edit"

    .prologue
    const/16 v8, 0x37

    const/4 v5, 0x0

    .line 33
    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    instance-of v4, v4, Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 37
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    if-le v2, v8, :cond_2

    .line 50
    const-string v4, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Device Name Limit is 55. text length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 52
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 53
    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 56
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #spaceNum:I
    :cond_2
    return-void

    .restart local v0       #deviceName:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #spaceNum:I
    :cond_3
    move v4, v5

    .line 46
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 62
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 68
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 5
    .parameter "dialog"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    .line 28
    iget-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d09f6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x37

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToast:Landroid/widget/Toast;

    .line 29
    return-void
.end method
