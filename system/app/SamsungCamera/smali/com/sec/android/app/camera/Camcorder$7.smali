.class Lcom/sec/android/app/camera/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->IsGpsEnableInSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2089
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 2091
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camcorder;->access$1702(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 2092
    return-void
.end method
