.class final Lcom/google/android/gms/internal/ads/zzakz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahv<",
        "Lcom/google/android/gms/internal/ads/zzbdv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdim:Lcom/google/android/gms/internal/ads/zzakq;

.field private final zzdip:Lcom/google/android/gms/internal/ads/zzahv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzahv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakz;->zzdim:Lcom/google/android/gms/internal/ads/zzakq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakz;->zzdip:Lcom/google/android/gms/internal/ads/zzahv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakz;)Lcom/google/android/gms/internal/ads/zzahv;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakz;->zzdip:Lcom/google/android/gms/internal/ads/zzahv;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdv;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakz;->zzdip:Lcom/google/android/gms/internal/ads/zzahv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakz;->zzdim:Lcom/google/android/gms/internal/ads/zzakq;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzahv;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
