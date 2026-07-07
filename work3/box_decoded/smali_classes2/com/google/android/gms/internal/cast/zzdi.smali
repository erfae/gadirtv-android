.class final Lcom/google/android/gms/internal/cast/zzdi;
.super Lcom/google/android/gms/internal/cast/zzdo;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaes:Lcom/google/android/gms/internal/cast/zzdp;

.field private final synthetic zzaet:Lcom/google/android/gms/internal/cast/zzdj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdj;Lcom/google/android/gms/internal/cast/zzdp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzaet:Lcom/google/android/gms/internal/cast/zzdj;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzaes:Lcom/google/android/gms/internal/cast/zzdp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzad(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdj;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoteDisplayEnded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzaes:Lcom/google/android/gms/internal/cast/zzdp;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzdp;->zzad(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzaet:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdj;->zzb(Lcom/google/android/gms/internal/cast/zzdj;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzaet:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdj;->zzb(Lcom/google/android/gms/internal/cast/zzdj;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
