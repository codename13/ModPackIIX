.class public Lcom/android/settings/IntelligentHelp;
.super Landroid/app/Activity;
.source "IntelligentHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "IntelligentScreen"

    const-string v1, "onCreate-help"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentHelp;->setContentView(I)V

    .line 37
    return-void
.end method
