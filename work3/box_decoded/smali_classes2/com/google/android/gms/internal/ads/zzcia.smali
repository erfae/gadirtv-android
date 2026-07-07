.class final synthetic Lcom/google/android/gms/internal/ads/zzcia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# instance fields
.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzgio:Lcom/google/android/gms/internal/ads/zzchr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchr;Lcom/google/android/gms/internal/ads/zzbdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzgio:Lcom/google/android/gms/internal/ads/zzchr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzgio:Lcom/google/android/gms/internal/ads/zzchr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzchr;->zza(Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V

    return-void
.end method
