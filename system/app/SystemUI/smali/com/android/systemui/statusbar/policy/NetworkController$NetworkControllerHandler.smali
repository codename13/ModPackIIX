.class Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 782
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 784
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 787
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH -mPreSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 803
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_4

    .line 805
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0201cd

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0201cd

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 822
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I

    move-result-object v1

    aget v1, v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I
    invoke-static {v1, v3, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 816
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0200bf

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0200bf

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 830
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(NO_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 835
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 867
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1208(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    .line 872
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v6, :cond_11

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 877
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 838
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_c

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 841
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(AIRPLANE) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 846
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_2

    .line 849
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 850
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v6, :cond_e

    .line 852
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level over - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 858
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 859
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(IN_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_0

    .line 854
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_d

    .line 855
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level under - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto :goto_5

    .line 863
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_2

    .line 869
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1210(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    goto/16 :goto_3

    .line 874
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_9

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_4

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method
