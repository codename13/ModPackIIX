.class Lcom/android/launcher2/Launcher$5;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1304
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)V

    .line 1305
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1307
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    goto :goto_0

    .line 1309
    :cond_2
    const-string v3, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1310
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPONSE_HOME_COUNT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v1, i:Landroid/content/Intent;
    const-string v3, "HOME_ALL_COUNT"

    iget-object v4, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$1000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->HomeFragmentCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    const-string v3, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1314
    const/4 v2, 0x0

    .line 1315
    .local v2, total_size:I
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->AllWidgetCount()I
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$1100(Lcom/android/launcher2/Launcher;)I

    move-result v2

    .line 1316
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPONSE_WIDGET_COUNT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v1       #i:Landroid/content/Intent;
    const-string v3, "WIDGET_ALL_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    iget-object v3, p0, Lcom/android/launcher2/Launcher$5;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
