.class final Lcom/google/android/gms/internal/ads/zzqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

.field private final synthetic zzbnc:I

.field private final synthetic zzbnd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqj;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbnc:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbnd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbmw:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzqj;)Lcom/google/android/gms/internal/ads/zzqg;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbnc:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzbnd:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqg;->zzf(IJ)V

    return-void
.end method
