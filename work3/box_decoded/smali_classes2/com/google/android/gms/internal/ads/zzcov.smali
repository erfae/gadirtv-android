.class final synthetic Lcom/google/android/gms/internal/ads/zzcov;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

.field private final zzggs:Lcom/google/android/gms/internal/ads/zzdyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzggs:Lcom/google/android/gms/internal/ads/zzdyz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzggs:Lcom/google/android/gms/internal/ads/zzdyz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpi;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpl;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcpf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcpf;->zzgoi:Lorg/json/JSONObject;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcpf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcpf;->zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcpi;-><init>(Lcom/google/android/gms/internal/ads/zzcpl;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatr;)V

    return-object v2
.end method
