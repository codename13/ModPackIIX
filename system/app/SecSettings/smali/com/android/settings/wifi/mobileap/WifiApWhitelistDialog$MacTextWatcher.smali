.class Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MacTextWatcher"
.end annotation


# instance fields
.field private mIndex:I

.field private mTempMac:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    .line 175
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$200(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 188
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    .line 195
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    if-ne p3, v3, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 202
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9a-fA-F]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 214
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9a-fA-F]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    const-string v1, "[0-9a-fA-F]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 222
    :cond_5
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9a-fA-F]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method
