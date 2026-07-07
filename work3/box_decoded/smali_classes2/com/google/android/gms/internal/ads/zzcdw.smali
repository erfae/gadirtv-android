.class final synthetic Lcom/google/android/gms/internal/ads/zzcdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfj;


# instance fields
.field private final zzegi:Ljava/util/Map;

.field private final zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdq;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzegi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzegi:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdq;->zzb(Ljava/util/Map;Z)V

    return-void
.end method
