.class public Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "name"
    .parameter "mac"
    .parameter "listener"

    .prologue
    const/4 v1, 0x6

    .line 74
    const v0, 0x7f0f0031

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    .line 68
    new-array v0, v1, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    .line 232
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 75
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 76
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    return-void

    .line 59
    nop

    :array_0
    .array-data 0x4
        0xd8t 0x2t 0xat 0x7ft
        0xdat 0x2t 0xat 0x7ft
        0xdbt 0x2t 0xat 0x7ft
        0xdct 0x2t 0xat 0x7ft
        0xddt 0x2t 0xat 0x7ft
        0xdet 0x2t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, enabled:Z
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 253
    const/4 v0, 0x1

    .line 259
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 260
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 262
    const/4 v0, 0x0

    .line 268
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    return-void

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    const v8, 0x7f0d027a

    const v7, 0x7f0a02d6

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v0

    .line 96
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 102
    const v2, 0x7f0d0273

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0542

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d02e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 144
    return-void

    .line 106
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v2, v6, :cond_2

    .line 107
    const v2, 0x7f0d0273

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 113
    const v2, 0x7f0d0278

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 120
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    .end local v1           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_3
    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1
.end method
