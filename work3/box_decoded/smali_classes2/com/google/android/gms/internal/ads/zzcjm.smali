.class final synthetic Lcom/google/android/gms/internal/ads/zzcjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztv;


# instance fields
.field private final zzfyf:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzfyf:Lcom/google/android/gms/internal/ads/zzdnj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzue$zzi$zza;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzfyf:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzod()Lcom/google/android/gms/internal/ads/zzue$zza;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zzekh$zza;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzue$zza$zzb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzod()Lcom/google/android/gms/internal/ads/zzue$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzue$zza;->zznh()Lcom/google/android/gms/internal/ads/zzue$zze;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzekh$zza;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzue$zze$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzue$zze$zza;->zzbu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzue$zze$zza;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzue$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzue$zze$zza;)Lcom/google/android/gms/internal/ads/zzue$zza$zzb;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zza$zzb;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-void
.end method
