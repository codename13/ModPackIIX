.class final Lcom/android/launcher2/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/android/launcher2/LauncherProvider;

.field final synthetic val$updates:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$5;->val$provider:Lcom/android/launcher2/LauncherProvider;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$5;->val$updates:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$5;->val$provider:Lcom/android/launcher2/LauncherProvider;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$updates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherProvider;->updateAppItems(Ljava/util/List;)V

    .line 512
    return-void
.end method
