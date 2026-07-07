.class final synthetic Lcom/google/android/gms/internal/ads/zzaba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwf;


# instance fields
.field private final zzclj:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzclk:Lcom/google/android/gms/internal/ads/zzaaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclj:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclk:Lcom/google/android/gms/internal/ads/zzaaq;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclj:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaba;->zzclk:Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zze(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
