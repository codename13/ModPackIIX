.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const v0, 0x1020457

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 506
    const v0, 0x102044e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 507
    const v0, 0x102044f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 508
    const v0, 0x1020450

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 509
    const v0, 0x1020451

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 510
    const v0, 0x1020452

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 511
    const v0, 0x1020453

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 512
    const v0, 0x1020454

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 513
    const v0, 0x1020455

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 514
    const v0, 0x1020456

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 515
    const v0, 0x1020284

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 565
    const/4 v0, -0x1

    .line 566
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 587
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 569
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 571
    const/4 v0, 0x2

    goto :goto_0

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 573
    const/4 v0, 0x3

    goto :goto_0

    .line 574
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 575
    const/4 v0, 0x4

    goto :goto_0

    .line 576
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 577
    const/4 v0, 0x5

    goto :goto_0

    .line 578
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 579
    const/4 v0, 0x6

    goto :goto_0

    .line 580
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 581
    const/4 v0, 0x7

    goto :goto_0

    .line 582
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 583
    const/16 v0, 0x8

    goto :goto_0

    .line 584
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 585
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1040386

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1040383

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->updatePukUnlockCancel(I)V

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 558
    .local v0, digit:I
    if-ltz v0, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 560
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V

    goto :goto_0
.end method
