.class public final Lcom/google/android/gms/internal/ads/zzckg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrz;
.implements Lcom/google/android/gms/internal/ads/zzbtj;
.implements Lcom/google/android/gms/internal/ads/zzbui;


# instance fields
.field private final zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

.field private final zzgke:Lcom/google/android/gms/internal/ads/zzckv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcko;Lcom/google/android/gms/internal/ads/zzckv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgke:Lcom/google/android/gms/internal/ads/zzckv;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgke:Lcom/google/android/gms/internal/ads/zzckv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcky;->zzo(Ljava/util/Map;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnj;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcko;->zzc(Lcom/google/android/gms/internal/ads/zzdnj;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdvx:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcko;->zzi(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "ftl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgt:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgke:Lcom/google/android/gms/internal/ads/zzckv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzgkd:Lcom/google/android/gms/internal/ads/zzcko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcko;->zzrx()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcky;->zzo(Ljava/util/Map;)V

    return-void
.end method
