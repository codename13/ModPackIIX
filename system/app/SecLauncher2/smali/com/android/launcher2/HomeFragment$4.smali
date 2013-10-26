.class Lcom/android/launcher2/HomeFragment$4;
.super Ljava/lang/Thread;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$4;->this$0:Lcom/android/launcher2/HomeFragment;

    iput p3, p0, Lcom/android/launcher2/HomeFragment$4;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$4;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$300(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFragment$4;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1020
    return-void
.end method
