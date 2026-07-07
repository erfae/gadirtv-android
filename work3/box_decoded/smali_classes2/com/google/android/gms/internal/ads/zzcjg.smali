.class public final Lcom/google/android/gms/internal/ads/zzcjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzckc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzapo()Lcom/google/android/gms/internal/ads/zzcjg;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjf;->zzapn()Lcom/google/android/gms/internal/ads/zzcjg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbwe:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbwf:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    sget-object v3, Lcom/google/android/gms/internal/ads/zztu$zza$zza;->zzbxc:Lcom/google/android/gms/internal/ads/zztu$zza$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzckc;-><init>(Lcom/google/android/gms/internal/ads/zztu$zza$zza;Lcom/google/android/gms/internal/ads/zztu$zza$zza;Lcom/google/android/gms/internal/ads/zztu$zza$zza;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzckc;

    return-object v0
.end method
