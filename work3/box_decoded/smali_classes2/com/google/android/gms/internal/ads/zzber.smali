.class final synthetic Lcom/google/android/gms/internal/ads/zzber;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeds:I

.field private final zzedt:I

.field private final zzeqh:Z

.field private final zzeqi:Z

.field private final zzesn:Lcom/google/android/gms/internal/ads/zzbep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesn:Lcom/google/android/gms/internal/ads/zzbep;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeds:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzedt:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqh:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqi:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesn:Lcom/google/android/gms/internal/ads/zzbep;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeds:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzedt:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqh:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqi:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbep;->zzb(IIZZ)V

    return-void
.end method
