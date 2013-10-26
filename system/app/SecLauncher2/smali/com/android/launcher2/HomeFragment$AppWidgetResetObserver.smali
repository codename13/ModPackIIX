.class Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/HomeFragment;

    .line 2017
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2018
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/HomeFragment;

    #calls: Lcom/android/launcher2/HomeFragment;->onAppWidgetReset()V
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$800(Lcom/android/launcher2/HomeFragment;)V

    .line 2023
    return-void
.end method
