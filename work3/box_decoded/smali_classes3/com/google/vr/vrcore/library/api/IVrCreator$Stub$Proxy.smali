.class public Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;
.super Lcom/google/vr/sdk/common/deps/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/common/deps/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DEPRECATED_newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public newGvrLayout(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    invoke-static {v0, p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IGvrLayout;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 11
    invoke-static {v0, p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
