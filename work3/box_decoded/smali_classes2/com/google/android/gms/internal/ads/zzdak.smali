.class final synthetic Lcom/google/android/gms/internal/ads/zzdak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzgyl:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdak;->zzgyl:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdak;->zzgyl:Lcom/google/android/gms/internal/ads/zzdal;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdal;->zza(Lcom/google/android/gms/internal/ads/zzdfp;)Lcom/google/android/gms/internal/ads/zzdai;

    move-result-object p1

    return-object p1
.end method
