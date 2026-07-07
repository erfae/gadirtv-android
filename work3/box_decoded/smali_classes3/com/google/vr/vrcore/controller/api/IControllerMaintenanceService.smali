.class public interface abstract Lcom/google/vr/vrcore/controller/api/IControllerMaintenanceService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerMaintenanceService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Ljava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerMaintenanceListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract request(Lcom/google/vr/vrcore/controller/api/ControllerMaintenanceRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
