.class final synthetic Lcom/google/android/gms/internal/ads/zzalf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# instance fields
.field private final zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

.field private final zzdiy:Lcom/google/android/gms/internal/ads/zzals;

.field private final zzdiz:Lcom/google/android/gms/internal/ads/zzako;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzako;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiy:Lcom/google/android/gms/internal/ads/zzals;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiz:Lcom/google/android/gms/internal/ads/zzako;

    return-void
.end method


# virtual methods
.method public final zztt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiq:Lcom/google/android/gms/internal/ads/zzalb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiy:Lcom/google/android/gms/internal/ads/zzals;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzdiz:Lcom/google/android/gms/internal/ads/zzako;

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzale;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzale;-><init>(Lcom/google/android/gms/internal/ads/zzalb;Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzako;)V

    sget v0, Lcom/google/android/gms/internal/ads/zzalm;->zzdji:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
