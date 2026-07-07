.class public final Lcom/google/android/gms/internal/ads/zzepj;
.super Lcom/google/android/gms/internal/ads/zzepb;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzepb<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepb;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzepk;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzepb;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzepb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzepb;

    return-object p0
.end method

.method public final zzblu()Lcom/google/android/gms/internal/ads/zzeph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeph;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepj;->zziyu:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeph;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzepk;)V

    return-object v0
.end method
