.class final synthetic Lcom/google/android/gms/internal/ads/zzbrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfxg:Lcom/google/android/gms/internal/ads/zzbqz;

.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqz;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfxg:Lcom/google/android/gms/internal/ads/zzbqz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfxg:Lcom/google/android/gms/internal/ads/zzbqz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfxh:Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqz;->zzc(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v0

    return-object v0
.end method
