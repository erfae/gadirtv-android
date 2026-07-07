.class final Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

.field private final synthetic zzbmy:I

.field private final synthetic zzbmz:I

.field private final synthetic zzbna:I

.field private final synthetic zzbnb:F


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqj;IIIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmy:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmz:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbna:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbnb:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzqj;)Lcom/google/android/gms/internal/ads/zzqg;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmy:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbmz:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbna:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzbnb:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzqg;->zza(IIIF)V

    return-void
.end method
