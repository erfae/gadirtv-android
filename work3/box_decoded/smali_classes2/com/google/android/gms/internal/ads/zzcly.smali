.class final synthetic Lcom/google/android/gms/internal/ads/zzcly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgv:Ljava/lang/String;

.field private final zzglj:Lcom/google/android/gms/internal/ads/zzclp;

.field private final zzglo:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzglp:Lcom/google/android/gms/internal/ads/zzajb;

.field private final zzglq:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclp;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzajb;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglo:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglp:Lcom/google/android/gms/internal/ads/zzajb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglq:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzdgv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglo:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglp:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzglq:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzdgv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclp;->zza(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzajb;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
