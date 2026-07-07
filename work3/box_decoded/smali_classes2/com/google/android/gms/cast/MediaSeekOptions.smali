.class public Lcom/google/android/gms/cast/MediaSeekOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaSeekOptions$Builder;,
        Lcom/google/android/gms/cast/MediaSeekOptions$ResumeState;
    }
.end annotation


# static fields
.field public static final RESUME_STATE_PAUSE:I = 0x2

.field public static final RESUME_STATE_PLAY:I = 0x1

.field public static final RESUME_STATE_UNCHANGED:I


# instance fields
.field private final zzhd:J

.field private final zzhe:I

.field private final zzhf:Z

.field private final zzp:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(JIZLorg/json/JSONObject;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhd:J

    .line 16
    iput p3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhe:I

    .line 17
    iput-boolean p4, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhf:Z

    .line 18
    iput-object p5, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzp:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(JIZLorg/json/JSONObject;Lcom/google/android/gms/cast/zzbv;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JIZLorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 10
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhd:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhe:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhe:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhf:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzp:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->zzp:Lorg/json/JSONObject;

    .line 11
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhd:J

    return-wide v0
.end method

.method public getResumeState()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhe:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhe:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhf:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzp:Lorg/json/JSONObject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSeekToInfinite()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->zzhf:Z

    return v0
.end method
