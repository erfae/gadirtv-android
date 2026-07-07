.class final synthetic Lcom/google/android/gms/ads/internal/util/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzecz:Lcom/google/android/gms/ads/internal/util/zzm;

.field private final zzeda:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzm;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzecz:Lcom/google/android/gms/ads/internal/util/zzm;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzeda:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzeda:Landroid/net/Uri;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzj(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
