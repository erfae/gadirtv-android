.class final synthetic Lcom/google/android/gms/internal/ads/zzbbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzejc:Z

.field private final zzels:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzeme:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbl;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzels:Lcom/google/android/gms/internal/ads/zzbbl;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzejc:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzeme:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzels:Lcom/google/android/gms/internal/ads/zzbbl;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzejc:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzeme:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbl;->zzc(ZJ)V

    return-void
.end method
