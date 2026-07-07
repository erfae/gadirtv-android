.class final synthetic Lcom/google/android/gms/internal/ads/zzala;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

.field private final zzdir:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzdis:Lcom/google/android/gms/internal/ads/zzals;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzals;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdir:Lcom/google/android/gms/internal/ads/zzef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdis:Lcom/google/android/gms/internal/ads/zzals;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdir:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzdis:Lcom/google/android/gms/internal/ads/zzals;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzals;)V

    return-void
.end method
