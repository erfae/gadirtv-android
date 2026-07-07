.class public final Lcom/google/android/gms/internal/ads/zzcgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzcgh;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpq:Lcom/google/android/gms/internal/ads/zzbed;

.field private final zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

.field private final zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

.field private final zzdsm:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzerb:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzggo:Lcom/google/android/gms/ads/internal/zzb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbed;Lcom/google/android/gms/internal/ads/zzcqo;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzckq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfqx:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdsm:Lcom/google/android/gms/internal/ads/zzazh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzggo:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzbpq:Lcom/google/android/gms/internal/ads/zzbed;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcgu;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcgu;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfqx:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzef;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzerb:Lcom/google/android/gms/internal/ads/zzef;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzazh;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdsm:Lcom/google/android/gms/internal/ads/zzazh;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/ads/internal/zzb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzggo:Lcom/google/android/gms/ads/internal/zzb;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzbed;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzbpq:Lcom/google/android/gms/internal/ads/zzbed;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzcqo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzdrz;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzcgu;)Lcom/google/android/gms/internal/ads/zzckq;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgh;-><init>(Lcom/google/android/gms/internal/ads/zzcgu;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgh;->zzaou()V

    return-object v0
.end method
