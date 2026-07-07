.class final synthetic Lcom/google/android/gms/internal/ads/zzdsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhqk:Lcom/google/android/gms/internal/ads/zzdsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhqk:Lcom/google/android/gms/internal/ads/zzdsv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhqk:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzaxg()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
