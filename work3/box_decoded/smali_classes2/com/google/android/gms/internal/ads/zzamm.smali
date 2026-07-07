.class public final Lcom/google/android/gms/internal/ads/zzamm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzamd<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

.field private final zzdke:Lcom/google/android/gms/internal/ads/zzamf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzdkf:Lcom/google/android/gms/internal/ads/zzame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzame<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final zzdkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalb;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzame<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkg:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkf:Lcom/google/android/gms/internal/ads/zzame;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdke:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamm;)Lcom/google/android/gms/internal/ads/zzamf;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdke:Lcom/google/android/gms/internal/ads/zzamf;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzalo;Lcom/google/android/gms/internal/ads/zzalz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalo;",
            "Lcom/google/android/gms/internal/ads/zzalz;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "TO;>;)V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzm;->zzyf()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahc;->zzdgi:Lcom/google/android/gms/internal/ads/zzaif;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzalo;Lcom/google/android/gms/internal/ads/zzazq;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaih;)V

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 17
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkf:Lcom/google/android/gms/internal/ads/zzame;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzame;->zzj(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkg:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzalz;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 22
    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    .line 23
    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void

    :catchall_0
    move-exception p2

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    .line 27
    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzalo;Lcom/google/android/gms/internal/ads/zzalz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzamm;->zza(Lcom/google/android/gms/internal/ads/zzalo;Lcom/google/android/gms/internal/ads/zzalz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;)V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamm;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "TO;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazq;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalb;->zzb(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamp;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzalo;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzazq;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzazq;Lcom/google/android/gms/internal/ads/zzalo;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Lcom/google/android/gms/internal/ads/zzazu;Lcom/google/android/gms/internal/ads/zzazs;)V

    return-object v0
.end method
