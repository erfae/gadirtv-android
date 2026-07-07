.class final synthetic Lcom/google/android/gms/internal/ads/zzbpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfvv:Lcom/google/android/gms/internal/ads/zzboz;

.field private final zzfvw:Lcom/google/android/gms/internal/ads/zzdpk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboz;Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zzfvv:Lcom/google/android/gms/internal/ads/zzboz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zzfvw:Lcom/google/android/gms/internal/ads/zzdpk;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zzfvv:Lcom/google/android/gms/internal/ads/zzboz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zzfvw:Lcom/google/android/gms/internal/ads/zzdpk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
