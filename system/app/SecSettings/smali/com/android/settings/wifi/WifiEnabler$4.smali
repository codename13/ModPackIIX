.class Lcom/android/settings/wifi/WifiEnabler$4;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$1000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1100(Lcom/android/settings/wifi/WifiEnabler;Z)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 511
    return-void
.end method
