.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceUnlockView"
.end annotation


# instance fields
.field private mMsg:Landroid/widget/TextView;

.field private mResId:I

.field private mStatusImg:Landroid/widget/ImageView;

.field private mVolumeImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Context;Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "configuration"
    .parameter "isPattern"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2412
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .line 2413
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2410
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2415
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2416
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1

    .line 2417
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 2418
    const v1, 0x1090090

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2428
    :goto_0
    const v1, 0x10203a7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 2429
    const v1, 0x10203a9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 2430
    const v1, 0x10203a8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 2432
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040690

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104068d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10802f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2439
    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2440
    return-void

    .line 2420
    :cond_0
    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2422
    :cond_1
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 2423
    const v1, 0x1090092

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 2425
    :cond_2
    const v1, 0x1090091

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public setErrorMsg()V
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2457
    return-void
.end method

.method public setPrepareMsg()V
    .locals 2

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104068b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108043c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2446
    return-void
.end method

.method public setRecognitionMsg()V
    .locals 2

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104068b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2450
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108043c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2451
    return-void
.end method

.method public setSuccessMsg()V
    .locals 2

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104068e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2461
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x108043d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2462
    return-void
.end method

.method public updateVolumeBg(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 2465
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    if-eq v0, p1, :cond_0

    .line 2467
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mResId:I

    .line 2468
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2470
    :cond_0
    return-void
.end method
