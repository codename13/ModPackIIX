.class Lcom/android/settings/wifi/WifiConfigController$4;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1426
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 1422
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v7, 0x40

    .line 1398
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v7, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v7, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0298

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d024b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0299

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->access$002(Lcom/android/settings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1412
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiConfigController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1417
    :cond_1
    return-void

    .line 1402
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
