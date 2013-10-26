.class Lcom/android/internal/policy/impl/SimUnlockScreen$1;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 264
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 267
    :cond_0
    if-nez p1, :cond_2

    .line 269
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900ee

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v6, 0x1020440

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, layout:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x104038e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 277
    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 278
    .local v3, toast:Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 279
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 280
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 281
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 315
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 316
    return-void

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x104038a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 311
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v7, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0
.end method
