.class final synthetic Lcom/google/android/gms/internal/ads/zzamu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzdid:Lcom/google/android/gms/internal/ads/zzahv;

.field private final zzdih:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdih:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdid:Lcom/google/android/gms/internal/ads/zzahv;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdih:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdid:Lcom/google/android/gms/internal/ads/zzahv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalz;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    return-object p1
.end method
