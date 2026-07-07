.class final synthetic Lcom/google/android/gms/internal/ads/zzboo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzfvb:Lcom/google/android/gms/internal/ads/zzboj;

.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzdyo;

.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvb:Lcom/google/android/gms/internal/ads/zzboj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvc:Lcom/google/android/gms/internal/ads/zzdyo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvb:Lcom/google/android/gms/internal/ads/zzboj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvc:Lcom/google/android/gms/internal/ads/zzdyo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzboo;->zzfvd:Lcom/google/android/gms/internal/ads/zzdyz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzboc;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzboj;->zza(Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzboc;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
