.class Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;
.super Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AlphabeticalListIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-direct {p0, p1}, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->run()V

    .line 570
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressed(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$UnPressRunnable;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->invalidate()V

    .line 572
    return-void
.end method
