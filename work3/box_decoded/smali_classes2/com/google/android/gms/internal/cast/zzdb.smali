.class final Lcom/google/android/gms/internal/cast/zzdb;
.super Lcom/google/android/gms/internal/cast/zzdc;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaen:Lcom/google/android/gms/internal/cast/zzcz;

.field private final synthetic zzaep:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzaep:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;-><init>(Lcom/google/android/gms/internal/cast/zzcz;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Lcom/google/android/gms/internal/cast/zzdj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzdf;-><init>(Lcom/google/android/gms/internal/cast/zzdc;Lcom/google/android/gms/internal/cast/zzdj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzcz;->zzb(Lcom/google/android/gms/internal/cast/zzcz;)Lcom/google/android/gms/internal/cast/zzdp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzaep:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdj;->zza(Lcom/google/android/gms/internal/cast/zzdl;Lcom/google/android/gms/internal/cast/zzdp;Ljava/lang/String;)V

    return-void
.end method
