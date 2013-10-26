.class Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;
.super Ljava/lang/Object;
.source "SamsungAppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SamsungAppWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/android/launcher2/SamsungAppWidgetView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SamsungAppWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    #calls: Lcom/android/launcher2/SamsungAppWidgetView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/android/launcher2/SamsungAppWidgetView;->access$300(Lcom/android/launcher2/SamsungAppWidgetView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 124
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    #getter for: Lcom/android/launcher2/SamsungAppWidgetView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/android/launcher2/SamsungAppWidgetView;->access$000(Lcom/android/launcher2/SamsungAppWidgetView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungAppWidgetView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    #calls: Lcom/android/launcher2/SamsungAppWidgetView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/android/launcher2/SamsungAppWidgetView;->access$100(Lcom/android/launcher2/SamsungAppWidgetView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    #getter for: Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/android/launcher2/SamsungAppWidgetView;->access$200(Lcom/android/launcher2/SamsungAppWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungAppWidgetView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungAppWidgetView;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/SamsungAppWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/SamsungAppWidgetView;->access$202(Lcom/android/launcher2/SamsungAppWidgetView;Z)Z

    .line 120
    :cond_0
    return-void
.end method
