.class final Lcom/google/android/gms/internal/ads/zzdxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzhwt:Lcom/google/android/gms/internal/ads/zzdxv;

.field private final synthetic zzhxa:Lcom/google/android/gms/internal/ads/zzdwl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxv;Lcom/google/android/gms/internal/ads/zzdwl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzhwt:Lcom/google/android/gms/internal/ads/zzdxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzhxa:Lcom/google/android/gms/internal/ads/zzdwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzhwt:Lcom/google/android/gms/internal/ads/zzdxv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzhxa:Lcom/google/android/gms/internal/ads/zzdwl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxv;->zzb(Lcom/google/android/gms/internal/ads/zzdxv;Lcom/google/android/gms/internal/ads/zzdwl;)V

    return-void
.end method
