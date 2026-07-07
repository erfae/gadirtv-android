.class public abstract Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

.field static final TRANSACTION_closeNativeGvrLibrary:I = 0x3

.field static final TRANSACTION_loadNativeDlsymMethod:I = 0x4

.field static final TRANSACTION_loadNativeGvrLibrary:I = 0x2

.field static final TRANSACTION_loadNativeGvrLibraryWithMinVersion:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->loadNativeGvrLibraryWithMinVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->loadNativeDlsymMethod()J

    move-result-wide p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->closeNativeGvrLibrary(J)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 13
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->loadNativeGvrLibrary(III)J

    move-result-wide p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
