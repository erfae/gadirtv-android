.class public Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;,
        Lcom/google/android/gms/cast/MediaQueueContainerMetadata$MediaQueueContainerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaQueueContainerMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_QUEUE_CONTAINER_TYPE_AUDIO_BOOK:I = 0x1

.field public static final MEDIA_QUEUE_CONTAINER_TYPE_GENERIC:I


# instance fields
.field private zzf:Ljava/lang/String;

.field private zzgo:I

.field private zzgp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzgq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private zzgr:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/google/android/gms/cast/zzbq;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbq;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->clear()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;D)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    .line 6
    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 12
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    .line 15
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    .line 16
    iget-wide v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Lcom/google/android/gms/cast/zzbp;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;-><init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/zzbp;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;-><init>()V

    return-void
.end method

.method private final clear()V
    .locals 2

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-void
.end method

.method private final fromJson(Lorg/json/JSONObject;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "containerType"

    const-string v1, ""

    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "AUDIOBOOK_CONTAINER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "GENERIC_CONTAINER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iput v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    :goto_0
    const/4 v0, 0x0

    const-string v1, "title"

    .line 66
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    const-string v0, "sections"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    .line 70
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 73
    new-instance v3, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v3}, Lcom/google/android/gms/cast/MediaMetadata;-><init>()V

    .line 74
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/MediaMetadata;->fromJson(Lorg/json/JSONObject;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "containerImages"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    .line 80
    invoke-static {v1, v0}, Lcom/google/android/gms/cast/internal/media/zza;->zza(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 81
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    const-string v2, "containerDuration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-void
.end method

.method private final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;D)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzb(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzk(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Ljava/util/List;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzb(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Lorg/json/JSONObject;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final zzb(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-void
.end method

.method private final zzb(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    return-void
.end method

.method private final zzk(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 108
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 109
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 110
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    .line 111
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    .line 112
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getContainerDuration()D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    return-wide v0
.end method

.method public getContainerImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 4

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgo:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "containerType"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "AUDIOBOOK_CONTAINER"

    .line 87
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "GENERIC_CONTAINER"

    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "title"

    .line 89
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 92
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaMetadata;

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string v2, "sections"

    .line 95
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgq:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/cast/internal/media/zza;->zze(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "containerImages"

    .line 99
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v1, "containerDuration"

    .line 100
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgr:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->getContainerType()I

    move-result v0

    const/4 v1, 0x2

    .line 22
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 25
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    .line 28
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->getContainerImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    .line 31
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->getContainerDuration()D

    move-result-wide v0

    const/4 v2, 0x6

    .line 34
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method final zza(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzgp:Ljava/util/List;

    return-void
.end method
