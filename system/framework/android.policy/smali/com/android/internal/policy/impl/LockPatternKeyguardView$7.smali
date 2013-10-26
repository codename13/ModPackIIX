.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2059
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2061
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2062
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2064
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2067
    return-void
.end method

.method public exposeFallback()V
    .locals 2

    .prologue
    .line 2087
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock exposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2089
    return-void
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 2094
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock pokeWakelock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2096
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 2073
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock reportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget v1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    .line 2075
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2076
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2077
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2079
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2082
    return-void
.end method

.method public unlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2038
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2040
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2042
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    .line 2044
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    if-nez v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2053
    :goto_0
    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 2052
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_0
.end method
