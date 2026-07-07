.class final Lcom/google/android/gms/internal/ads/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzj:I

.field private final synthetic zzzk:Z

.field private final synthetic zzzl:Lcom/google/android/gms/internal/ads/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzj:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzj:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzk:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfa;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfa;->zza(Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzj:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzb(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzj:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzk:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfa;->zza(IZ)V

    :cond_0
    return-void
.end method
