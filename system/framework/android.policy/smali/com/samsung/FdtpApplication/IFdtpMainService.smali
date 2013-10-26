.class public interface abstract Lcom/samsung/FdtpApplication/IFdtpMainService;
.super Ljava/lang/Object;
.source "IFdtpMainService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/FdtpApplication/IFdtpMainService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFdtpMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFdtpOutputActivityType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopFdtp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
