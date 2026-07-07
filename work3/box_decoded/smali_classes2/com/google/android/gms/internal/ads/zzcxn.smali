.class final synthetic Lcom/google/android/gms/internal/ads/zzcxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgvy:Lcom/google/android/gms/internal/ads/zzcxl;

.field private final zzgvz:Lcom/google/android/gms/internal/ads/zzve;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgvy:Lcom/google/android/gms/internal/ads/zzcxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgvy:Lcom/google/android/gms/internal/ads/zzcxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxm;->zzd(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzcxq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxq;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
