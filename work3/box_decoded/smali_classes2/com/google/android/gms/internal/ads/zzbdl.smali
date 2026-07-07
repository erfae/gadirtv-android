.class final synthetic Lcom/google/android/gms/internal/ads/zzbdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzejc:Z

.field private final zzeme:J

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbe;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzenn:Lcom/google/android/gms/internal/ads/zzbbe;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzejc:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzeme:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzenn:Lcom/google/android/gms/internal/ads/zzbbe;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzejc:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->zzeme:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbe;->zza(ZJ)V

    return-void
.end method
