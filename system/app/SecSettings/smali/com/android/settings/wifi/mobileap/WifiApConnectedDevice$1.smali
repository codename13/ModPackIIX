.class Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 113
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 114
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    const/4 v3, 0x0

    #calls: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d02ab

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 118
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
