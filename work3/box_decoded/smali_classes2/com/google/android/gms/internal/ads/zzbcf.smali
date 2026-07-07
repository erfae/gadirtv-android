.class final synthetic Lcom/google/android/gms/internal/ads/zzbcf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzeno:Lcom/google/android/gms/internal/ads/zzbca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbca;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzeno:Lcom/google/android/gms/internal/ads/zzbca;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzdha:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzon;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzeno:Lcom/google/android/gms/internal/ads/zzbca;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzdha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbca;->zzfi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v0

    return-object v0
.end method
