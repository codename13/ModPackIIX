.class Lcom/android/settings/wifi/WifiDisableDialog$2;
.super Ljava/lang/Object;
.source "WifiDisableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDisableDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDisableDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDisableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDisableDialog$2;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDisableDialog$2;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDisableDialog;->finish()V

    .line 61
    return-void
.end method
