.class final synthetic Lcom/google/android/gms/internal/ads/zzcpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzgof:Lcom/google/android/gms/internal/ads/zzcou;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcou;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgof:Lcom/google/android/gms/internal/ads/zzcou;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgof:Lcom/google/android/gms/internal/ads/zzcou;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
