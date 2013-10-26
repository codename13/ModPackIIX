.class public Lcom/android/settings/EasyModeSettings;
.super Landroid/app/Activity;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EasyModeSettings$mOnItemSelectedListener;
    }
.end annotation


# instance fields
.field ButtonCancel:Landroid/widget/Button;

.field ButtonOk:Landroid/widget/Button;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/EasyModeSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/EasyModeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/EasyModeSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/EasyModeSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 233
    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 244
    .local v0, saved_value:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 245
    .local v1, selected_value:I
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_vale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    if-ne v0, v1, :cond_1

    .end local v0           #saved_value:I
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 255
    return-void

    .line 242
    .end local v1           #selected_value:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #saved_value:I
    goto :goto_0

    .restart local v1       #selected_value:I
    :cond_1
    move v0, v1

    .line 247
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const-string v1, "EasyModeSettings"

    const-string v2, "setOnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 152
    .local v0, saved_value:I
    :cond_0
    const-string v1, "EasyModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mSpinner.getSelectedItemPosition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->finish()V

    goto :goto_0

    .line 160
    :cond_1
    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v1, :cond_3

    .line 161
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 163
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b86

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0b85

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$3;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$2;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 182
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 185
    :cond_3
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 187
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0b82

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$5;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$4;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 206
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 211
    .end local v0           #saved_value:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->finish()V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0a00df
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x1090009

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "EasyModeSettings"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v1, 0x7f04005c

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    .line 55
    const v1, 0x7f0a00dd

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f0a00dc

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0a00df

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0a00e0

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    .line 60
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    .line 63
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b80

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b73

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    .line 68
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, buildcarrier:Ljava/lang/String;
    const-string v1, "jaspervzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/settings/EasyModeSettings$1;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v6, v2}, Lcom/android/settings/EasyModeSettings$1;-><init>(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    new-instance v1, Lcom/android/settings/EasyModeSettings$mOnItemSelectedListener;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings/EasyModeSettings$mOnItemSelectedListener;-><init>(Lcom/android/settings/EasyModeSettings;Landroid/app/Activity;Landroid/widget/ArrayAdapter;)V

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 110
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    if-nez p1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 116
    iput v5, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 126
    :goto_1
    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b81

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020265

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    :goto_2
    return-void

    .line 106
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 119
    :cond_1
    iput v4, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_1

    .line 123
    :cond_2
    const-string v1, "easymode_spinner_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_1

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0b84

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f02025b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 271
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 221
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->updateState()V

    .line 230
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 143
    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    return-void
.end method
