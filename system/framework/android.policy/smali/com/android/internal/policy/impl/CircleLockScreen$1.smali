.class Lcom/android/internal/policy/impl/CircleLockScreen$1;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 532
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x90837

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->stopAutoScroll()V

    .line 537
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 572
    :cond_4
    :goto_0
    return-void

    .line 547
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortcutWidget"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104063c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 555
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MissedEvent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setStartLocation(I)V

    .line 559
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104063b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    goto/16 :goto_0

    .line 565
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    goto/16 :goto_0
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 578
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->startAutoScroll()V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 597
    return-void
.end method
