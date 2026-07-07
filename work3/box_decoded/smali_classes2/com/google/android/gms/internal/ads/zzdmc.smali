.class final synthetic Lcom/google/android/gms/internal/ads/zzdmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# instance fields
.field private final zzhgc:Lcom/google/android/gms/internal/ads/zzdma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhgc:Lcom/google/android/gms/internal/ads/zzdma;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhgc:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdma;->zze(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrd;

    return-object p1
.end method
