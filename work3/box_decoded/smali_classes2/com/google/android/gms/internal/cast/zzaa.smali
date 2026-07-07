.class final Lcom/google/android/gms/internal/cast/zzaa;
.super Lcom/google/android/gms/cast/zzp;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzmy:Lcom/google/android/gms/internal/cast/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaa;->zzmy:Lcom/google/android/gms/internal/cast/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/cast/zzp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzt;Lcom/google/android/gms/internal/cast/zzy;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(Lcom/google/android/gms/internal/cast/zzt;)V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->zzmy:Lcom/google/android/gms/internal/cast/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzt;->zza(Lcom/google/android/gms/internal/cast/zzt;)Lcom/google/android/gms/internal/cast/zzr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/zzr;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->zzmy:Lcom/google/android/gms/internal/cast/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzt;->zza(Lcom/google/android/gms/internal/cast/zzt;)Lcom/google/android/gms/internal/cast/zzr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzr;->onConnectionSuspended(I)V

    return-void
.end method

.method public final zza(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->zzmy:Lcom/google/android/gms/internal/cast/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzt;->zza(Lcom/google/android/gms/internal/cast/zzt;)Lcom/google/android/gms/internal/cast/zzr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzr;->zzr(I)V

    return-void
.end method

.method public final zzb(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->zzmy:Lcom/google/android/gms/internal/cast/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzt;->zza(Lcom/google/android/gms/internal/cast/zzt;)Lcom/google/android/gms/internal/cast/zzr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzr;->zzr(I)V

    return-void
.end method
