.class Lcom/android/settings/DormantmodSettings$1;
.super Landroid/database/ContentObserver;
.source "DormantmodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DormantmodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DormantmodSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DormantmodSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/DormantmodSettings$1;->this$0:Lcom/android/settings/DormantmodSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings$1;->this$0:Lcom/android/settings/DormantmodSettings;

    invoke-virtual {v1}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const-string v1, "DormantModeSettings"

    const-string v2, "onChange() DORMANTMODE_SWITCH_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings$1;->this$0:Lcom/android/settings/DormantmodSettings;

    invoke-virtual {v1}, Lcom/android/settings/DormantmodSettings;->updateDormantmodepage()V

    .line 110
    return-void
.end method
