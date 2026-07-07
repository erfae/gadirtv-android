.class final synthetic Lcom/google/android/gms/internal/ads/zzakt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzdik:Lcom/google/android/gms/internal/ads/zzakq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakt;->zzdik:Lcom/google/android/gms/internal/ads/zzakq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakt;->zzdha:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakt;->zzdik:Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakt;->zzdha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakq;->zzdd(Ljava/lang/String;)V

    return-void
.end method
