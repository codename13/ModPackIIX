.class Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsCustomizeAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelRequested:Z

.field final page:I

.field private threadPriority:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 895
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 893
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->mCancelRequested:Z

    .line 896
    iput p1, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->page:I

    .line 897
    iput v0, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->threadPriority:I

    .line 898
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 902
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 905
    :goto_0
    return-object v0

    .line 904
    :cond_0
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;->run(Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 905
    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 890
    check-cast p1, [Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->doInBackground([Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 927
    iget-object v0, p1, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;->run(Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 928
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 890
    check-cast p1, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->onPostExecute(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method public requestCancel(Z)Z
    .locals 1
    .parameter "canInterrupt"

    .prologue
    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->mCancelRequested:Z

    .line 917
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method setThreadPriority(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 931
    iput p1, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->threadPriority:I

    .line 932
    return-void
.end method

.method syncThreadPriority()V
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->threadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 936
    return-void
.end method

.method public wasCancelRequested()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->mCancelRequested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
