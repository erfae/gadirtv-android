.class public interface abstract Lcom/google/vr/vrcore/controller/api/IControllerMaintenanceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerMaintenanceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMaintenanceEvent(Lcom/google/vr/vrcore/controller/api/ControllerMaintenanceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
