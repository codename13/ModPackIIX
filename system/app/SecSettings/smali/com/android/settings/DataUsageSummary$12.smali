.class Lcom/android/settings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 1386
    :goto_0
    return-void

    .line 1384
    :cond_0
    const-string v0, "DataUsage"

    const-string v1, "onClick() : mAppSettingsIntent is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
