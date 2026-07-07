.class final synthetic Lcom/google/android/gms/internal/ads/zzciy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztv;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzgjg:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

.field private final zzgjh:Lcom/google/android/gms/internal/ads/zzue$zzu;

.field private final zzgji:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzue$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzue$zzu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgjg:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgjh:Lcom/google/android/gms/internal/ads/zzue$zzu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgji:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzue$zzi$zza;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgjg:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgjh:Lcom/google/android/gms/internal/ads/zzue$zzu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgji:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzod()Lcom/google/android/gms/internal/ads/zzue$zza;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzekh$zza;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzue$zza$zzb;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzue$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzue$zza$zza;)Lcom/google/android/gms/internal/ads/zzue$zza$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zza$zzb;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzoc()Lcom/google/android/gms/internal/ads/zzue$zzg;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh;->zzbhy()Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh$zza;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzue$zzg$zza;->zzb(Lcom/google/android/gms/internal/ads/zzue$zzu;)Lcom/google/android/gms/internal/ads/zzue$zzg$zza;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzue$zzg$zza;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzue$zzi$zza;->zzby(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzue$zzi$zza;

    return-void
.end method
