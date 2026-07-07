.class final synthetic Lcom/google/android/gms/internal/ads/zzbch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# instance fields
.field private final zzeno:Lcom/google/android/gms/internal/ads/zzbca;

.field private final zzenq:Lcom/google/android/gms/internal/ads/zzom;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbca;Lcom/google/android/gms/internal/ads/zzom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzeno:Lcom/google/android/gms/internal/ads/zzbca;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzenq:Lcom/google/android/gms/internal/ads/zzom;

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzon;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzeno:Lcom/google/android/gms/internal/ads/zzbca;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzenq:Lcom/google/android/gms/internal/ads/zzom;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbca;->zza(Lcom/google/android/gms/internal/ads/zzom;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v0

    return-object v0
.end method
