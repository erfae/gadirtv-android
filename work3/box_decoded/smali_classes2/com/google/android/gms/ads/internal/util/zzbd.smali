.class public final Lcom/google/android/gms/ads/internal/util/zzbd;
.super Lcom/google/android/gms/internal/ads/zzaa;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaa<",
        "Lcom/google/android/gms/internal/ads/zzy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeex:Lcom/google/android/gms/internal/ads/zzazq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeey:Lcom/google/android/gms/internal/ads/zzayu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/util/zzbd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzazq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbg;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbg;-><init>(Lcom/google/android/gms/internal/ads/zzazq;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzai;)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzal:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzeex:Lcom/google/android/gms/internal/ads/zzazq;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzayu;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzayu;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzeey:Lcom/google/android/gms/internal/ads/zzayu;

    const-string v0, "GET"

    .line 7
    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzaj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzy;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzeey:Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzy;->zzal:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzy;->statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/util/Map;I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzeey:Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayu;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzi([B)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbd;->zzeex:Lcom/google/android/gms/internal/ads/zzazq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    return-void
.end method
