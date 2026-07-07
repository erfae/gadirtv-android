.class public final Lcom/google/android/gms/cast/internal/zzah;
.super Lcom/google/android/gms/cast/internal/zzc;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private zzadd:J

.field private zzade:Lcom/google/android/gms/cast/MediaStatus;

.field private zzadf:Ljava/lang/Long;

.field private zzadg:Lcom/google/android/gms/cast/internal/zzai;

.field private final zzadh:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadi:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadj:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadk:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadl:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadm:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadn:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzado:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadp:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadq:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadr:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzads:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadt:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadu:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadv:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadw:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadx:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzady:Lcom/google/android/gms/cast/internal/zzap;

.field private final zzadz:Lcom/google/android/gms/cast/internal/zzap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 628
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzaa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/internal/zzah;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzah;->NAMESPACE:Ljava/lang/String;

    const-string v2, "MediaControlChannel"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/cast/internal/zzap;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    .line 3
    new-instance v4, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v4, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadi:Lcom/google/android/gms/cast/internal/zzap;

    .line 4
    new-instance v5, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v5, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadj:Lcom/google/android/gms/cast/internal/zzap;

    .line 5
    new-instance v6, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v6, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v6, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadk:Lcom/google/android/gms/cast/internal/zzap;

    .line 6
    new-instance v7, Lcom/google/android/gms/cast/internal/zzap;

    const-wide/16 v8, 0x2710

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v7, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadl:Lcom/google/android/gms/cast/internal/zzap;

    .line 7
    new-instance v8, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v8, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v8, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadm:Lcom/google/android/gms/cast/internal/zzap;

    .line 8
    new-instance v9, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v9, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v9, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadn:Lcom/google/android/gms/cast/internal/zzap;

    .line 9
    new-instance v10, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v10, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v10, v0, Lcom/google/android/gms/cast/internal/zzah;->zzado:Lcom/google/android/gms/cast/internal/zzap;

    .line 10
    new-instance v11, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v11, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadp:Lcom/google/android/gms/cast/internal/zzap;

    .line 11
    new-instance v12, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v12, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v12, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadq:Lcom/google/android/gms/cast/internal/zzap;

    .line 12
    new-instance v13, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v13, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v13, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadr:Lcom/google/android/gms/cast/internal/zzap;

    .line 13
    new-instance v14, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v14, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzah;->zzads:Lcom/google/android/gms/cast/internal/zzap;

    .line 14
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadt:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 p1, v15

    .line 15
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadu:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 v16, v15

    .line 16
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadv:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 v17, v15

    .line 17
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadx:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 v18, v15

    .line 18
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadw:Lcom/google/android/gms/cast/internal/zzap;

    .line 19
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzady:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 v19, v15

    .line 20
    new-instance v15, Lcom/google/android/gms/cast/internal/zzap;

    invoke-direct {v15, v2, v3}, Lcom/google/android/gms/cast/internal/zzap;-><init>(J)V

    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadz:Lcom/google/android/gms/cast/internal/zzap;

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 23
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 24
    invoke-virtual {v0, v6}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 25
    invoke-virtual {v0, v7}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 26
    invoke-virtual {v0, v8}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 27
    invoke-virtual {v0, v9}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 28
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 29
    invoke-virtual {v0, v11}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 30
    invoke-virtual {v0, v12}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 31
    invoke-virtual {v0, v13}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 32
    invoke-virtual {v0, v14}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    move-object/from16 v1, p1

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    move-object/from16 v1, v16

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    move-object/from16 v1, v17

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    move-object/from16 v1, v18

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    move-object/from16 v1, v19

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 39
    invoke-virtual {v0, v15}, Lcom/google/android/gms/cast/internal/zzc;->zza(Lcom/google/android/gms/cast/internal/zzap;)V

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/cast/internal/zzah;->zzff()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzai;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v0, :cond_0

    .line 606
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzai;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzai;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzai;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(DJJ)J
    .locals 5

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p3, p1

    cmp-long p1, p5, v2

    if-lez p1, :cond_2

    cmp-long p1, p3, p5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_3

    move-wide p5, v2

    goto :goto_0

    :cond_3
    move-wide p5, p3

    :goto_0
    return-wide p5
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzah;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    .line 627
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzcz;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 464
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestId"

    .line 465
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p3, "PRECACHE"

    .line 466
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p2, "precacheData"

    .line 468
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_2

    .line 469
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 470
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 471
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 472
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/zzcz;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/zzcz;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "requestItems"

    .line 474
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lorg/json/JSONArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 589
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 590
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzff()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 608
    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzeu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzap;

    const/16 v2, 0x7d2

    .line 611
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/internal/zzap;->zzac(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzak;
    .locals 3

    .line 622
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    move-result-object v0

    .line 623
    new-instance v1, Lcom/google/android/gms/cast/internal/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/cast/internal/zzak;-><init>()V

    const-string v2, "customData"

    .line 624
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/cast/internal/zzak;->zzp:Lorg/json/JSONObject;

    .line 625
    iput-object v0, v1, Lcom/google/android/gms/cast/internal/zzak;->zztl:Lcom/google/android/gms/cast/MediaError;

    return-object v1
.end method

.method private final zzt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzt()J

    move-result-wide v0

    return-wide v0

    .line 594
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/internal/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzal;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getApproximateAdBreakClipPositionMs()J
    .locals 13

    .line 256
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v2

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-wide v2

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    .line 266
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_3
    move-wide v7, v4

    .line 269
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    move-result-wide v9

    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getDurationInMs()J

    move-result-wide v11

    move-object v6, p0

    .line 271
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/cast/internal/zzah;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v2
.end method

.method public final getApproximateLiveSeekableRangeEnd()J
    .locals 10

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 247
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 250
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    move-result-wide v6

    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 254
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/internal/zzah;->zza(DJJ)J

    move-result-wide v6

    :cond_2
    return-wide v6
.end method

.method public final getApproximateLiveSeekableRangeStart()J
    .locals 10

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getStartTime()J

    move-result-wide v6

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isMovingWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, -0x1

    move-object v3, p0

    .line 241
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/cast/internal/zzah;->zza(DJJ)J

    move-result-wide v6

    .line 242
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    return-wide v6
.end method

.method public final getApproximateStreamPosition()J
    .locals 9

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzah;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    if-eqz v3, :cond_3

    const-wide v4, 0x3e800000000L

    .line 216
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzah;->getApproximateLiveSeekableRangeEnd()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzah;->getStreamDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzah;->getStreamDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 222
    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    return-wide v1

    .line 224
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 230
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    .line 231
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/cast/internal/zzah;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_0
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzah;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 114
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SKIP_AD"

    .line 115
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 119
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-string v3, "Error creating SkipAd message: %s"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadz:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;DLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 123
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 127
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    .line 128
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    .line 131
    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 132
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 134
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadm:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;III)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-lez p4, :cond_4

    .line 431
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 433
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEM_RANGE"

    .line 434
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 435
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "itemId"

    .line 436
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-lez p3, :cond_2

    const-string p2, "nextCount"

    .line 438
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-lez p4, :cond_3

    const-string p2, "prevCount"

    .line 440
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 444
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadx:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 430
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of nextCount and prevCount must be positive and the other must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v3, p3, v0

    if-ltz v3, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v3

    :try_start_0
    const-string v1, "requestId"

    .line 354
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v5, "QUEUE_UPDATE"

    .line 355
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    .line 356
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string v1, "currentItemId"

    .line 358
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p2, "jump"

    .line 360
    invoke-virtual {v0, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p5, :cond_5

    .line 361
    array-length p2, p5

    if-lez p2, :cond_5

    .line 362
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 p6, 0x0

    .line 363
    :goto_1
    array-length v1, p5

    if-ge p6, v1, :cond_4

    .line 364
    aget-object v1, p5, p6

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, p6, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_4
    const-string p5, "items"

    .line 366
    invoke-virtual {v0, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    :cond_5
    invoke-static {p7}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string p5, "repeatMode"

    .line 369
    invoke-virtual {v0, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    if-eqz v2, :cond_7

    const-string p2, "currentTime"

    .line 371
    invoke-static {p3, p4}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide p3

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p8, :cond_8

    const-string p2, "customData"

    .line 373
    invoke-virtual {v0, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :catch_0
    :cond_8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v3, v4, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 377
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzads:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v3, v4, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v3
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;Lcom/google/android/gms/cast/MediaLoadRequestData;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaInfo and MediaQueueData should not be both null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v0

    :try_start_0
    const-string v2, "requestId"

    .line 50
    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "LOAD"

    .line 51
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to jsonify the load request due to malformed request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;Lcom/google/android/gms/cast/MediaSeekOptions;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    .line 95
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->isSeekToInfinite()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide v3, 0x3e800000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getPosition()J

    move-result-wide v3

    :goto_0
    :try_start_0
    const-string v5, "requestId"

    .line 96
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "SEEK"

    .line 97
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "currentTime"

    .line 99
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    const-string v7, "resumeState"

    if-ne v5, v6, :cond_1

    :try_start_1
    const-string v5, "PLAYBACK_START"

    .line 101
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v5, "PLAYBACK_PAUSE"

    .line 103
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "customData"

    .line 105
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadf:Ljava/lang/Long;

    .line 110
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadl:Lcom/google/android/gms/cast/internal/zzap;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzaj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/internal/zzaj;-><init>(Lcom/google/android/gms/cast/internal/zzah;Lcom/google/android/gms/cast/internal/zzam;)V

    invoke-virtual {p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 202
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    .line 203
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "textTrackStyle"

    .line 205
    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "mediaSessionId"

    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadq:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackStyle cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 59
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PAUSE"

    .line 60
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 63
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadi:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;ZLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 142
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    .line 143
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    .line 146
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 147
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "customData"

    .line 149
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadn:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 448
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEMS"

    .line 449
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 450
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 451
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 452
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p2, v5

    .line 453
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 455
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadw:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[IILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 398
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 400
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 402
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_REORDER"

    .line 403
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 404
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 405
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 406
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 407
    aget v5, p2, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 409
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p2, "insertBefore"

    .line 411
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "customData"

    .line 413
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 417
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadu:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 399
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[ILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 379
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 383
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_REMOVE"

    .line 384
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 385
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 386
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 387
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 388
    aget v5, p2, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 390
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p2, "customData"

    .line 392
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 396
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadt:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 185
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "EDIT_TRACKS_INFO"

    .line 186
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 188
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 189
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 190
    aget-wide v5, p2, v4

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    .line 192
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 196
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadp:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackIds cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    if-eqz v1, :cond_9

    .line 316
    array-length v7, v1

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    if-ltz v3, :cond_0

    .line 319
    array-length v9, v1

    if-ge v3, v9, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 321
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    array-length v1, v1

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const-string v1, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    .line 323
    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v12, v4, v9

    if-ltz v12, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_3
    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v12

    :try_start_0
    const-string v10, "requestId"

    .line 328
    invoke-virtual {v9, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "type"

    const-string v14, "QUEUE_INSERT"

    .line 329
    invoke-virtual {v9, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "mediaSessionId"

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v14

    invoke-virtual {v9, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 332
    :goto_2
    array-length v14, v1

    if-ge v7, v14, :cond_4

    .line 333
    aget-object v14, v1, v7

    invoke-virtual {v14}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v10, v7, v14}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "items"

    .line 335
    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v1, "insertBefore"

    .line 337
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eq v3, v8, :cond_6

    const-string v1, "currentItemIndex"

    .line 340
    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    if-eqz v11, :cond_7

    const-string v1, "currentTime"

    .line 342
    invoke-static/range {p6 .. p7}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    .line 344
    invoke-virtual {v9, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :catch_0
    :cond_8
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 348
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzah;->zzadr:Lcom/google/android/gms/cast/internal/zzap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v12, v13, v2}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v12

    .line 317
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzam;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 287
    array-length v0, p2

    if-eqz v0, :cond_7

    if-ltz p3, :cond_6

    .line 289
    array-length v0, p2

    if-ge p3, v0, :cond_6

    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v3, p5, v0

    if-ltz v3, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v3

    .line 295
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    :try_start_0
    const-string p1, "requestId"

    .line 296
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "QUEUE_LOAD"

    .line 297
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 299
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_2

    .line 300
    aget-object v5, p2, v1

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "items"

    .line 302
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "repeatMode"

    .line 306
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startIndex"

    .line 307
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    const-string p1, "currentTime"

    .line 309
    invoke-static {p5, p6}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    if-eqz p7, :cond_5

    const-string p1, "customData"

    .line 311
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 305
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    .line 290
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzai;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/cast/internal/zzam;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 172
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "GET_STATUS"

    .line 173
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v3, :cond_0

    const-string v4, "mediaSessionId"

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzt()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzado:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zzb(Lcom/google/android/gms/cast/internal/zzam;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 159
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_PLAYBACK_RATE"

    .line 160
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playbackRate"

    .line 161
    invoke-virtual {v0, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "mediaSessionId"

    .line 162
    iget-object p3, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaStatus;->zzt()J

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "customData"

    .line 164
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v1, v2, p3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzady:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1

    .line 156
    :cond_1
    new-instance p1, Lcom/google/android/gms/cast/internal/zzal;

    invoke-direct {p1}, Lcom/google/android/gms/cast/internal/zzal;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/cast/internal/zzam;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 71
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "STOP"

    .line 72
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 75
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadk:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzcz;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v0

    .line 462
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/cast/internal/zzah;->zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v0
.end method

.method public final zzb(JI)V
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzeu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzap;

    const/4 v2, 0x0

    .line 619
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/cast/internal/zzam;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 419
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 421
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "QUEUE_GET_ITEM_IDS"

    .line 422
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 423
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadv:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/cast/internal/zzam;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzev()J

    move-result-wide v1

    :try_start_0
    const-string v3, "requestId"

    .line 83
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PLAY"

    .line 84
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzt()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v3, "customData"

    .line 87
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzk;->zza(Ljava/lang/String;JLjava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadj:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzap;->zza(JLcom/google/android/gms/cast/internal/zzam;)V

    return-wide v1
.end method

.method public final zzet()V
    .locals 0

    .line 614
    invoke-super {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzet()V

    .line 615
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->zzff()V

    return-void
.end method

.method public final zzz(Ljava/lang/String;)V
    .locals 13

    .line 478
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzah;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "message received: %s"

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 479
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 480
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    .line 481
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 482
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "QUEUE_ITEM_IDS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "MEDIA_STATUS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "INVALID_PLAYER_STATE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v7, "LOAD_FAILED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "INVALID_REQUEST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "QUEUE_ITEMS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "LOAD_CANCELLED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v7, "itemIds"

    const/16 v11, 0x834

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    .line 572
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadw:Lcom/google/android/gms/cast/internal/zzap;

    .line 573
    invoke-virtual {v4, v5, v6, v3, v12}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    .line 575
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v4, :cond_19

    const-string v4, "items"

    .line 576
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v5, 0x0

    .line 578
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 579
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v2, v4}, Lcom/google/android/gms/cast/internal/zzai;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto/16 :goto_c

    .line 554
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadx:Lcom/google/android/gms/cast/internal/zzap;

    .line 555
    invoke-virtual {v4, v5, v6, v3, v12}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    .line 557
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v4, :cond_7

    const-string v4, "changeType"

    .line 558
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/cast/internal/zzah;->zzc(Lorg/json/JSONArray;)[I

    move-result-object v5

    const-string v6, "insertBefore"

    .line 560
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_7

    .line 562
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string v6, "NO_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x4

    goto :goto_3

    :sswitch_9
    const-string v6, "ITEMS_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :sswitch_a
    const-string v6, "UPDATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    goto :goto_3

    :sswitch_b
    const-string v6, "REMOVE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    goto :goto_3

    :sswitch_c
    const-string v6, "INSERT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x0

    :cond_2
    :goto_3
    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v0, :cond_4

    if-eq v8, v10, :cond_3

    goto :goto_4

    .line 569
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v2, v5}, Lcom/google/android/gms/cast/internal/zzai;->zza([I)V

    return-void

    .line 567
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v2, v5}, Lcom/google/android/gms/cast/internal/zzai;->zzc([I)V

    return-void

    .line 565
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v2, v5}, Lcom/google/android/gms/cast/internal/zzai;->zzb([I)V

    return-void

    .line 563
    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v4, v5, v2}, Lcom/google/android/gms/cast/internal/zzai;->zza([II)V

    :cond_7
    :goto_4
    return-void

    .line 546
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadv:Lcom/google/android/gms/cast/internal/zzap;

    .line 547
    invoke-virtual {v4, v5, v6, v3, v12}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v4, :cond_8

    .line 550
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzah;->zzc(Lorg/json/JSONArray;)[I

    move-result-object v2

    if-eqz v2, :cond_8

    .line 552
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    invoke-interface {v4, v2}, Lcom/google/android/gms/cast/internal/zzai;->zza([I)V

    :cond_8
    return-void

    .line 541
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    const-string v7, "received unexpected error: Invalid Request."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzeu()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/internal/zzap;

    .line 543
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzah;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzak;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v11, v8}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-void

    .line 539
    :pswitch_4
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    const/16 v7, 0x835

    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzah;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzak;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 535
    :pswitch_5
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    .line 536
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzah;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzak;

    move-result-object v2

    .line 537
    invoke-virtual {v4, v5, v6, v11, v2}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 530
    :pswitch_6
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    const-string v7, "received unexpected error: Invalid Player State."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzeu()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/internal/zzap;

    .line 532
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/zzah;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzak;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v11, v8}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-void

    :pswitch_7
    const-string v4, "status"

    .line 483
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 485
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 486
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadh:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/cast/internal/zzap;->test(J)Z

    move-result v4

    .line 487
    iget-object v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadm:Lcom/google/android/gms/cast/internal/zzap;

    .line 488
    invoke-virtual {v7}, Lcom/google/android/gms/cast/internal/zzap;->zzfh()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadm:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/cast/internal/zzap;->test(J)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadn:Lcom/google/android/gms/cast/internal/zzap;

    .line 489
    invoke-virtual {v7}, Lcom/google/android/gms/cast/internal/zzap;->zzfh()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadn:Lcom/google/android/gms/cast/internal/zzap;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/cast/internal/zzap;->test(J)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-nez v4, :cond_f

    .line 493
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v4, :cond_e

    goto :goto_8

    .line 497
    :cond_e
    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v2

    goto :goto_9

    .line 494
    :cond_f
    :goto_8
    new-instance v4, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v4, v2}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    const/16 v2, 0x7f

    :goto_9
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_10

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    .line 500
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onStatusUpdated()V

    :cond_10
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_11

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    .line 503
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onStatusUpdated()V

    :cond_11
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_12

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    :cond_12
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_13

    .line 507
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onMetadataUpdated()V

    :cond_13
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_14

    .line 509
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onQueueStatusUpdated()V

    :cond_14
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_15

    .line 511
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onPreloadStatusUpdated()V

    :cond_15
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_16

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    .line 515
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadg:Lcom/google/android/gms/cast/internal/zzai;

    if-eqz v4, :cond_16

    .line 516
    invoke-interface {v4}, Lcom/google/android/gms/cast/internal/zzai;->onAdBreakStatusUpdated()V

    :cond_16
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_18

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/cast/internal/zzah;->zzadd:J

    .line 519
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onStatusUpdated()V

    goto :goto_a

    .line 521
    :cond_17
    iput-object v12, p0, Lcom/google/android/gms/cast/internal/zzah;->zzade:Lcom/google/android/gms/cast/MediaStatus;

    .line 522
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onStatusUpdated()V

    .line 523
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onMetadataUpdated()V

    .line 524
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onQueueStatusUpdated()V

    .line 525
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzah;->onPreloadStatusUpdated()V

    .line 526
    :cond_18
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->zzeu()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/internal/zzap;

    .line 527
    invoke-virtual {v4, v5, v6, v3, v12}, Lcom/google/android/gms/cast/internal/zzap;->zzc(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :cond_19
    :goto_c
    return-void

    :catch_0
    move-exception v2

    .line 584
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzah;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    const-string p1, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v4, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch
.end method
