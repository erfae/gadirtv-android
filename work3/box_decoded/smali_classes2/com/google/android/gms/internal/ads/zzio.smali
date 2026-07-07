.class final Lcom/google/android/gms/internal/ads/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajb:Lcom/google/android/gms/internal/ads/zzik;

.field private final synthetic zzaji:I

.field private final synthetic zzajj:J

.field private final synthetic zzajk:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzik;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajb:Lcom/google/android/gms/internal/ads/zzik;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaji:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajj:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajk:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajb:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzih;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaji:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajj:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajk:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzih;->zza(IJJ)V

    return-void
.end method
