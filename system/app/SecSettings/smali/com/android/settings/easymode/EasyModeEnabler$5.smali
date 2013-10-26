.class Lcom/android/settings/easymode/EasyModeEnabler$5;
.super Ljava/lang/Object;
.source "EasyModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler$5;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler$5;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/easymode/EasyModeEnabler;->access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler$5;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/settings/easymode/EasyModeEnabler;->mCheck:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->access$102(Lcom/android/settings/easymode/EasyModeEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 150
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler$5;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/easymode/EasyModeEnabler;->access$200(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "easymode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeEnabler$5;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/easymode/EasyModeEnabler;->access$200(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    const-string v1, "EasyModeEnabler"

    const-string v2, "switch is on_2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method
