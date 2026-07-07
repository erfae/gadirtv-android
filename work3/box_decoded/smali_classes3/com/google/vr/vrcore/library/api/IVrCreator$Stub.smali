.class public abstract Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IVrCreator"

.field static final TRANSACTION_DEPRECATED_newNativeLibraryLoader:I = 0x3

.field static final TRANSACTION_newGvrLayout:I = 0x5

.field static final TRANSACTION_newNativeLibraryLoader:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrCreator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IVrCreator;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/library/api/IVrCreator;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->newGvrLayout(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->DEPRECATED_newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
