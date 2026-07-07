.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_QUEUE_NEXT:J = 0x40L

.field public static final COMMAND_QUEUE_PREVIOUS:J = 0x80L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_LOADING:I = 0x5

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final REPEAT_MODE_REPEAT_ALL:I = 0x1

.field public static final REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE:I = 0x3

.field public static final REPEAT_MODE_REPEAT_OFF:I = 0x0

.field public static final REPEAT_MODE_REPEAT_SINGLE:I = 0x2

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private zzdy:D

.field private zzdz:Z

.field private zzfr:Lcom/google/android/gms/cast/MediaInfo;

.field private zzfx:D

.field private zzfy:[J

.field private zzgb:Lcom/google/android/gms/cast/MediaQueueData;

.field private zzhg:J

.field private zzhh:I

.field private zzhi:I

.field private zzhj:I

.field private zzhk:J

.field private zzhl:J

.field private zzhm:I

.field private zzhn:I

.field private zzho:I

.field private final zzhp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzhq:Z

.field private zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

.field private zzhs:Lcom/google/android/gms/cast/VideoInfo;

.field private zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field private final zzhu:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 523
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaStatus"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 524
    new-instance v0, Lcom/google/android/gms/cast/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbw;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "JIDIIJJDZ[JII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;Z",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            "Lcom/google/android/gms/cast/VideoInfo;",
            "Lcom/google/android/gms/cast/MediaLiveSeekableRange;",
            "Lcom/google/android/gms/cast/MediaQueueData;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    .line 3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v3, p2

    .line 5
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    move v3, p4

    .line 6
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    move-wide v3, p5

    .line 7
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    move v3, p7

    .line 8
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    move v3, p8

    .line 9
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    move-wide v3, p9

    .line 10
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    move-wide/from16 v3, p11

    .line 11
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    move-wide/from16 v3, p13

    .line 12
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    move/from16 v3, p15

    .line 13
    iput-boolean v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    move-object/from16 v3, p16

    .line 14
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    move/from16 v3, p17

    .line 15
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    move/from16 v3, p18

    .line 16
    iput v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 23
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_0
    iput-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    :goto_0
    move/from16 v1, p20

    .line 26
    iput v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    if-eqz v2, :cond_1

    .line 27
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/MediaStatus;->zzd(Ljava/util/List;)V

    :cond_1
    move/from16 v1, p22

    .line 29
    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhq:Z

    move-object/from16 v1, p23

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    move-object/from16 v1, p24

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    move-object/from16 v1, p25

    .line 32
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-object/from16 v1, p26

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 35
    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    return-void
.end method

.method private static zza(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    return v1

    :cond_1
    if-eq p3, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private final zzd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 390
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 392
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zzi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "extendedStatus"

    .line 355
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    .line 358
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 360
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 364
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 398
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 400
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 401
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_4

    return v2

    .line 403
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    .line 404
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    .line 405
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    .line 406
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    .line 407
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 410
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 413
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhq:Z

    .line 414
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 415
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    .line 416
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 417
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    .line 418
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentAdBreak()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 503
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 505
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 506
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 516
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 518
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 519
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentItemId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1
.end method

.method public getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    return-object v0
.end method

.method public getLoadingItemId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    return v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    return-object v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    return-wide v0
.end method

.method public getSupportedMediaCommands()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    .line 421
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    .line 423
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    .line 426
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    .line 427
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    .line 429
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    .line 430
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 433
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhq:Z

    .line 435
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 436
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 3

    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMute()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhq:Z

    return v0
.end method

.method public setActiveTrackIds([J)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    return-void
.end method

.method public setAdBreakStatus(Lcom/google/android/gms/cast/AdBreakStatus;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    return-void
.end method

.method public setCurrentItemId(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    return-void
.end method

.method public setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    return-void
.end method

.method public setIdleReason(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    return-void
.end method

.method public setIsPlayingAd(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhq:Z

    return-void
.end method

.method public setLiveSeekableRange(Lcom/google/android/gms/cast/MediaLiveSeekableRange;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    return-void
.end method

.method public setLoadingItemId(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    return-void
.end method

.method public setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    return-void
.end method

.method public setPreloadedItemId(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    return-void
.end method

.method public setQueueData(Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    return-void
.end method

.method public setQueueItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->zzd(Ljava/util/List;)V

    return-void
.end method

.method public setQueueRepeatMode(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    return-void
.end method

.method public setStreamPosition(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    return-void
.end method

.method public setStreamVolume(D)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    return-void
.end method

.method public setSupportedMediaCommands(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    return-void
.end method

.method public setVideoInfo(Lcom/google/android/gms/cast/VideoInfo;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 11

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mediaSessionId"

    .line 288
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "playerState"

    .line 290
    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "IDLE"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    const/4 v10, 0x5

    if-eq v4, v10, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v5, "LOADING"

    goto :goto_0

    :cond_1
    const-string v5, "BUFFERING"

    goto :goto_0

    :cond_2
    const-string v5, "PAUSED"

    goto :goto_0

    :cond_3
    const-string v5, "PLAYING"

    .line 297
    :cond_4
    :goto_0
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    if-ne v3, v9, :cond_9

    .line 300
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    if-eq v3, v9, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    move-object v3, v2

    goto :goto_1

    :cond_5
    const-string v3, "ERROR"

    goto :goto_1

    :cond_6
    const-string v3, "INTERRUPTED"

    goto :goto_1

    :cond_7
    const-string v3, "CANCELLED"

    goto :goto_1

    :cond_8
    const-string v3, "FINISHED"

    :goto_1
    const-string v4, "idleReason"

    .line 307
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v3, "playbackRate"

    .line 308
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    .line 309
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    invoke-static {v4, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "supportedMediaCommands"

    .line 310
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "volume"

    .line 312
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "level"

    .line 313
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "muted"

    .line 314
    iget-boolean v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "activeTrackIds"

    .line 318
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    if-nez v4, :cond_a

    move-object v4, v2

    goto :goto_3

    .line 320
    :cond_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 321
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_b

    aget-wide v8, v5, v7

    .line 322
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 325
    :cond_b
    :goto_3
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "customData"

    .line 326
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v3, :cond_c

    const-string v4, "media"

    .line 328
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_c
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    if-eqz v3, :cond_d

    const-string v4, "currentItemId"

    .line 330
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    :cond_d
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    if-eqz v3, :cond_e

    const-string v4, "preloadedItemId"

    .line 332
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    :cond_e
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    if-eqz v3, :cond_f

    const-string v4, "loadingItemId"

    .line 334
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v3, :cond_10

    const-string v4, "breakStatus"

    .line 336
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakStatus;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    if-eqz v3, :cond_11

    const-string v4, "videoInfo"

    .line 338
    invoke-virtual {v3}, Lcom/google/android/gms/cast/VideoInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    if-eqz v3, :cond_12

    const-string v4, "queueData"

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueData;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_12
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    if-eqz v3, :cond_13

    const-string v4, "liveSeekableRange"

    .line 342
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    const-string v3, "repeatMode"

    .line 344
    iget v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 346
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 347
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 348
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_14
    const-string v4, "items"

    .line 350
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    return-object v0

    :catch_0
    move-exception v0

    .line 353
    sget-object v3, Lcom/google/android/gms/cast/MediaStatus;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Error transforming MediaStatus into JSONObject"

    invoke-virtual {v3, v0, v4, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    .line 439
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    .line 441
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 442
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 444
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    .line 445
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    .line 447
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    .line 448
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v4

    .line 451
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    .line 454
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    .line 456
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v2

    .line 457
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    .line 460
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    .line 461
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    move-result-wide v4

    .line 464
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/16 v1, 0xb

    .line 466
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isMute()Z

    move-result v2

    .line 467
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    .line 469
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v2

    .line 470
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    const/16 v1, 0xd

    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v2

    .line 473
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    .line 475
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v2

    .line 476
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    .line 477
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x10

    .line 478
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    .line 479
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x12

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v2

    .line 482
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v2

    .line 485
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x14

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;

    move-result-object v2

    .line 488
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x15

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object v2

    .line 491
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x16

    .line 493
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object v2

    .line 494
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 495
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lorg/json/JSONObject;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/cast/MediaStatus;->zzi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "mediaSessionId"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 107
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 108
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "playerState"

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_b

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDLE"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "PLAYING"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "PAUSED"

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "BUFFERING"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const-string v2, "LOADING"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 123
    :goto_1
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    if-eq v1, v2, :cond_6

    .line 124
    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-ne v1, v5, :cond_b

    const-string v1, "idleReason"

    .line 126
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 128
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCELLED"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v6, 0x2

    goto :goto_2

    :cond_7
    const-string v2, "INTERRUPTED"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const-string v2, "FINISHED"

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const-string v2, "ERROR"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v6, 0x4

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    .line 137
    :goto_2
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    if-eq v6, v1, :cond_b

    .line 138
    iput v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    or-int/lit8 v0, v0, 0x2

    :cond_b
    const-string v1, "playbackRate"

    .line 140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 141
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 142
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    cmpl-double v8, v6, v1

    if-eqz v8, :cond_c

    .line 143
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfx:D

    or-int/lit8 v0, v0, 0x2

    :cond_c
    const-string v1, "currentTime"

    .line 145
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 146
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    move-result-wide v1

    .line 147
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    cmp-long v8, v1, v6

    if-eqz v8, :cond_d

    .line 148
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhk:J

    or-int/lit8 v0, v0, 0x2

    :cond_d
    or-int/lit16 v0, v0, 0x80

    :cond_e
    const-string v1, "supportedMediaCommands"

    .line 151
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 153
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    cmp-long v8, v1, v6

    if-eqz v8, :cond_f

    .line 154
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhl:J

    or-int/lit8 v0, v0, 0x2

    :cond_f
    const-string v1, "volume"

    .line 156
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    and-int/2addr p2, v5

    if-nez p2, :cond_11

    .line 157
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "level"

    .line 158
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 159
    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    cmpl-double v8, v1, v6

    if-eqz v8, :cond_10

    .line 160
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:D

    or-int/lit8 v0, v0, 0x2

    :cond_10
    const-string v1, "muted"

    .line 162
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 163
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    if-eq p2, v1, :cond_11

    .line 164
    iput-boolean p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdz:Z

    or-int/lit8 v0, v0, 0x2

    :cond_11
    const-string p2, "activeTrackIds"

    .line 168
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 169
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(Lorg/json/JSONArray;)[J

    move-result-object p2

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    if-nez v1, :cond_12

    :goto_3
    const/4 v1, 0x1

    goto :goto_5

    .line 172
    :cond_12
    array-length v1, v1

    array-length v6, p2

    if-eq v1, v6, :cond_13

    goto :goto_3

    :cond_13
    const/4 v1, 0x0

    .line 174
    :goto_4
    array-length v6, p2

    if-ge v1, v6, :cond_15

    .line 175
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    aget-wide v7, v6, v1

    aget-wide v9, p2, v1

    cmp-long v6, v7, v9

    if-eqz v6, :cond_14

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_18

    .line 180
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    goto :goto_6

    .line 181
    :cond_16
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    if-eqz p2, :cond_17

    move-object p2, v2

    const/4 v1, 0x1

    goto :goto_6

    :cond_17
    move-object p2, v2

    const/4 v1, 0x0

    :cond_18
    :goto_6
    if-eqz v1, :cond_19

    .line 184
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfy:[J

    or-int/lit8 v0, v0, 0x2

    :cond_19
    const-string p2, "customData"

    .line 186
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 187
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 188
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    :cond_1a
    const-string p2, "media"

    .line 190
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 192
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 193
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v6, :cond_1b

    if-eqz v6, :cond_1c

    .line 194
    invoke-virtual {v6, v1}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 195
    :cond_1b
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    const-string v1, "metadata"

    .line 197
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    or-int/lit8 v0, v0, 0x4

    :cond_1d
    const-string p2, "currentItemId"

    .line 199
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 200
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 201
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    if-eq v1, p2, :cond_1e

    .line 202
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    or-int/lit8 v0, v0, 0x2

    :cond_1e
    const-string p2, "preloadedItemId"

    .line 204
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 205
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    if-eq v1, p2, :cond_1f

    .line 206
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    or-int/lit8 v0, v0, 0x10

    :cond_1f
    const-string p2, "loadingItemId"

    .line 208
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 209
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    if-eq v1, p2, :cond_20

    .line 210
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    or-int/lit8 v0, v0, 0x2

    .line 212
    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-nez p2, :cond_21

    const/4 p2, -0x1

    goto :goto_7

    :cond_21
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result p2

    .line 213
    :goto_7
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    iget v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    invoke-static {v1, v6, v7, p2}, Lcom/google/android/gms/cast/MediaStatus;->zza(IIII)Z

    move-result p2

    if-nez p2, :cond_2b

    const-string p2, "repeatMode"

    .line 216
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 217
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-static {p2}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->mediaRepeatModeFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_22

    .line 219
    iget p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    goto :goto_8

    :cond_22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 220
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v1, v6, :cond_23

    .line 221
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    const/4 p2, 0x1

    goto :goto_9

    :cond_23
    const/4 p2, 0x0

    :goto_9
    const-string v1, "items"

    .line 223
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 224
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 226
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v6, :cond_24

    .line 228
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "itemId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 230
    :cond_24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v6, :cond_28

    .line 232
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 233
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 234
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v12

    if-eqz v12, :cond_25

    .line 236
    invoke-virtual {v12, v11}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    move-result v11

    or-int/2addr p2, v11

    .line 237
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_27

    goto :goto_c

    .line 241
    :cond_25
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v10, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    if-ne p2, v10, :cond_26

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz p2, :cond_26

    .line 242
    new-instance v10, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-direct {v10, p2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p2

    .line 243
    invoke-virtual {p2, v11}, Lcom/google/android/gms/cast/MediaQueueItem;->fromJson(Lorg/json/JSONObject;)Z

    .line 244
    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 246
    :cond_26
    new-instance p2, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p2, v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    const/4 p2, 0x1

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 248
    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v6, :cond_29

    const/4 p2, 0x1

    .line 250
    :cond_29
    invoke-direct {p0, v8}, Lcom/google/android/gms/cast/MediaStatus;->zzd(Ljava/util/List;)V

    :cond_2a
    if-eqz p2, :cond_2c

    goto :goto_d

    .line 254
    :cond_2b
    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhh:I

    .line 255
    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    .line 256
    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhn:I

    .line 257
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2c

    .line 259
    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzho:I

    .line 260
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhp:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 261
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhu:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    :goto_d
    or-int/lit8 v0, v0, 0x8

    :cond_2c
    const-string p2, "breakStatus"

    .line 263
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object p2

    .line 264
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v1, :cond_2d

    if-nez p2, :cond_2e

    :cond_2d
    if-eqz v1, :cond_30

    .line 265
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2e
    if-eqz p2, :cond_2f

    const/4 v4, 0x1

    .line 266
    :cond_2f
    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/MediaStatus;->setIsPlayingAd(Z)V

    .line 267
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhr:Lcom/google/android/gms/cast/AdBreakStatus;

    or-int/lit8 v0, v0, 0x20

    :cond_30
    const-string p2, "videoInfo"

    .line 269
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/VideoInfo;->zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object p2

    .line 270
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v1, :cond_31

    if-nez p2, :cond_32

    :cond_31
    if-eqz v1, :cond_33

    .line 271
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 272
    :cond_32
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhs:Lcom/google/android/gms/cast/VideoInfo;

    or-int/lit8 v0, v0, 0x40

    :cond_33
    const-string p2, "breakInfo"

    .line 274
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_34

    .line 275
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;->zze(Lorg/json/JSONObject;)V

    or-int/lit8 v0, v0, 0x2

    :cond_34
    const-string p2, "queueData"

    .line 277
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 278
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueData$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaQueueData$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->build()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzgb:Lcom/google/android/gms/cast/MediaQueueData;

    :cond_35
    const-string p2, "liveSeekableRange"

    .line 279
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 281
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    or-int/lit8 p1, v0, 0x2

    goto :goto_e

    .line 283
    :cond_36
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    if-eqz p1, :cond_37

    or-int/lit8 v0, v0, 0x2

    .line 285
    :cond_37
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzht:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move p1, v0

    :goto_e
    return p1
.end method

.method public final zzt()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhg:J

    return-wide v0
.end method

.method public final zzu()Z
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    .line 373
    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhi:I

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhj:I

    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzhm:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(IIII)Z

    move-result v0

    return v0
.end method
