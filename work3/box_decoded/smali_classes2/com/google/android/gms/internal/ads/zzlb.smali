.class final Lcom/google/android/gms/internal/ads/zzlb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkz;


# instance fields
.field private final zzawg:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxa:I

.field private final zzaxe:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzku;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzku;->zzawg:Lcom/google/android/gms/internal/ads/zzpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzawg:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbl(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxe:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxa:I

    return-void
.end method


# virtual methods
.method public final zzgy()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxa:I

    return v0
.end method

.method public final zzgz()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxe:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzawg:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final zzha()Z
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxe:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
