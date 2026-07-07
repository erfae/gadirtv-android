.class final synthetic Lcom/google/android/gms/internal/ads/zzcqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztv;


# instance fields
.field private final zzgqe:Lcom/google/android/gms/internal/ads/zzue$zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzue$zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgqe:Lcom/google/android/gms/internal/ads/zzue$zzu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzue$zzi$zza;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgqe:Lcom/google/android/gms/internal/ads/zzue$zzu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzoc()Lcom/google/android/gms/internal/ads/zzue$zzg;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzekh$zza;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;->zzb(Lcom/google/android/gms/internal/ads/zzue$zzu;)Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zzg$zza;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-void
.end method
