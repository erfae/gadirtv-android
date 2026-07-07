.class public Lcom/google/android/gms/cast/MediaQueueData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueData$Builder;,
        Lcom/google/android/gms/cast/MediaQueueData$MediaQueueType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaQueueData;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_QUEUE_TYPE_ALBUM:I = 0x1

.field public static final MEDIA_QUEUE_TYPE_AUDIO_BOOK:I = 0x3

.field public static final MEDIA_QUEUE_TYPE_GENERIC:I = 0x0

.field public static final MEDIA_QUEUE_TYPE_LIVE_TV:I = 0x8

.field public static final MEDIA_QUEUE_TYPE_MOVIE:I = 0x9

.field public static final MEDIA_QUEUE_TYPE_PLAYLIST:I = 0x2

.field public static final MEDIA_QUEUE_TYPE_PODCAST_SERIES:I = 0x5

.field public static final MEDIA_QUEUE_TYPE_RADIO_STATION:I = 0x4

.field public static final MEDIA_QUEUE_TYPE_TV_SERIES:I = 0x6

.field public static final MEDIA_QUEUE_TYPE_VIDEO_PLAYLIST:I = 0x7


# instance fields
.field private name:Ljava/lang/String;

.field private repeatMode:I

.field private startTime:J

.field private zzfn:Ljava/lang/String;

.field private zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

.field private zzgt:Ljava/lang/String;

.field private zzgu:I

.field private zzgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzgw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Lcom/google/android/gms/cast/zzbs;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbs;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaQueueData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;->clear()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 16
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    .line 18
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    .line 19
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 21
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 22
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    .line 23
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    .line 24
    iget-wide v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/zzbr;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/MediaQueueData;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/zzbr;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaQueueContainerMetadata;ILjava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/MediaQueueContainerMetadata;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 7
    iput p6, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    .line 9
    iput p8, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    .line 10
    iput-wide p9, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-void
.end method

.method private final clear()V
    .locals 2

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 62
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    .line 63
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-void
.end method

.method private final fromJson(Lorg/json/JSONObject;)V
    .locals 13

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    const-string v0, "entity"

    .line 97
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    const-string v0, "queueType"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "LIVE_TV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "VIDEO_PLAYLIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v3, "MOVIE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v3, "ALBUM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "TV_SERIES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "AUDIOBOOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "PLAYLIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v3, "RADIO_STATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v3, "PODCAST_SERIES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 114
    :pswitch_0
    iput v4, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 112
    :pswitch_1
    iput v5, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x9

    .line 116
    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 100
    :pswitch_3
    iput v12, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 110
    :pswitch_4
    iput v6, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 104
    :pswitch_5
    iput v9, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 102
    :pswitch_6
    iput v10, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 106
    :pswitch_7
    iput v8, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    goto :goto_1

    .line 108
    :pswitch_8
    iput v7, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    :goto_1
    const-string v0, "name"

    .line 117
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    const-string v0, "containerMetadata"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 119
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;-><init>()V

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->build()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    :cond_a
    const-string v0, "repeatMode"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->mediaRepeatModeFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    :cond_b
    const-string v0, "items"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    .line 128
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_d

    .line 129
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 135
    :cond_d
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    const-string v1, "startIndex"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    const-string v0, "startTime"

    .line 136
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 137
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    long-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 138
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setEntity(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    return-void
.end method

.method private final setStartTime(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;I)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzl(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;J)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueData;->setStartTime(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/util/List;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzc(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Lorg/json/JSONObject;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/MediaQueueData;I)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzm(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->setEntity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzc(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    return-void
.end method

.method private final zzl(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    return-void
.end method

.method private final zzl(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    return-void
.end method

.method private final zzm(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 186
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueData;

    .line 187
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    .line 188
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 189
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 190
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    .line 191
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getContainerMetadata()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 198
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 6

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "id"

    .line 142
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "entity"

    .line 144
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzfn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_1
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgu:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "queueType"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v1, "MOVIE"

    .line 162
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_1
    const-string v1, "LIVE_TV"

    .line 160
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    const-string v1, "VIDEO_PLAYLIST"

    .line 158
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_3
    const-string v1, "TV_SERIES"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_4
    const-string v1, "PODCAST_SERIES"

    .line 154
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_5
    const-string v1, "RADIO_STATION"

    .line 152
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_6
    const-string v1, "AUDIOBOOK"

    .line 150
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_7
    const-string v1, "PLAYLIST"

    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_8
    const-string v1, "ALBUM"

    .line 146
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "name"

    .line 164
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgs:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    if-eqz v1, :cond_3

    const-string v2, "containerMetadata"

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_3
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "repeatMode"

    .line 169
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgv:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const-string v2, "items"

    .line 175
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "startIndex"

    .line 176
    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzgw:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const-string v3, "startTime"

    .line 178
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getQueueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 30
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getEntity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 33
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getQueueType()I

    move-result v1

    const/4 v2, 0x4

    .line 36
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 39
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getContainerMetadata()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    move-result-object v1

    const/4 v2, 0x6

    .line 42
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getRepeatMode()I

    move-result p2

    const/4 v1, 0x7

    .line 45
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getItems()Ljava/util/List;

    move-result-object p2

    const/16 v1, 0x8

    .line 48
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getStartIndex()I

    move-result p2

    const/16 v1, 0x9

    .line 51
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueData;->getStartTime()J

    move-result-wide v1

    const/16 p2, 0xa

    .line 54
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 55
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
