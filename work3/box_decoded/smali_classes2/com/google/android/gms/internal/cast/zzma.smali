.class final Lcom/google/android/gms/internal/cast/zzma;
.super Lcom/google/android/gms/internal/cast/zzlv;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzlv;-><init>(Lcom/google/android/gms/internal/cast/zzly;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzly;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzma;-><init>()V

    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)Lcom/google/android/gms/internal/cast/zzlm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/cast/zzlm<",
            "TE;>;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzoa;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzlm;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzma;->zzc(Ljava/lang/Object;J)Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzlm;->zzib()V

    return-void
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 5
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/cast/zzma;->zzc(Ljava/lang/Object;J)Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    .line 6
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzma;->zzc(Ljava/lang/Object;J)Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object p2

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzlm;->size()I

    move-result v1

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/cast/zzlm;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzlm;->zzia()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 11
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cast/zzlm;->zzbf(I)Lcom/google/android/gms/internal/cast/zzlm;

    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/cast/zzlm;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 14
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzoa;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
