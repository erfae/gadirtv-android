.class public Lcom/google/android/gms/cast/MediaError;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaError$Builder;,
        Lcom/google/android/gms/cast/MediaError$DetailedErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaError;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_REASON_APP_ERROR:Ljava/lang/String; = "APP_ERROR"

.field public static final ERROR_REASON_AUTHENTICATION_EXPIRED:Ljava/lang/String; = "AUTHENTICATION_EXPIRED"

.field public static final ERROR_REASON_CONCURRENT_STREAM_LIMIT:Ljava/lang/String; = "CONCURRENT_STREAM_LIMIT"

.field public static final ERROR_REASON_CONTENT_ALREADY_PLAYING:Ljava/lang/String; = "CONTENT_ALREADY_PLAYING"

.field public static final ERROR_REASON_CONTENT_FILTERED:Ljava/lang/String; = "CONTENT_FILTERED"

.field public static final ERROR_REASON_DUPLICATE_REQUEST_ID:Ljava/lang/String; = "DUPLICATE_REQUEST_ID"

.field public static final ERROR_REASON_END_OF_QUEUE:Ljava/lang/String; = "END_OF_QUEUE"

.field public static final ERROR_REASON_GENERIC_LOAD_ERROR:Ljava/lang/String; = "GENERIC_LOAD_ERROR"

.field public static final ERROR_REASON_INVALID_COMMAND:Ljava/lang/String; = "INVALID_COMMAND"

.field public static final ERROR_REASON_INVALID_MEDIA_SESSION_ID:Ljava/lang/String; = "INVALID_MEDIA_SESSION_ID"

.field public static final ERROR_REASON_INVALID_PARAMS:Ljava/lang/String; = "INVALID_PARAMS"

.field public static final ERROR_REASON_INVALID_REQUEST:Ljava/lang/String; = "INVALID_REQUEST"

.field public static final ERROR_REASON_LANGUAGE_NOT_SUPPORTED:Ljava/lang/String; = "LANGUAGE_NOT_SUPPORTED"

.field public static final ERROR_REASON_NOT_AVAILABLE_IN_REGION:Ljava/lang/String; = "NOT_AVAILABLE_IN_REGION"

.field public static final ERROR_REASON_NOT_SUPPORTED:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final ERROR_REASON_PARENTAL_CONTROL_RESTRICTED:Ljava/lang/String; = "PARENTAL_CONTROL_RESTRICTED"

.field public static final ERROR_REASON_PREMIUM_ACCOUNT_REQUIRED:Ljava/lang/String; = "PREMIUM_ACCOUNT_REQUIRED"

.field public static final ERROR_REASON_SKIP_LIMIT_REACHED:Ljava/lang/String; = "SKIP_LIMIT_REACHED"

.field public static final ERROR_REASON_VIDEO_DEVICE_REQUIRED:Ljava/lang/String; = "VIDEO_DEVICE_REQUIRED"


# instance fields
.field private final zzfd:J

.field private final zzfe:Ljava/lang/Integer;

.field private final zzff:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/cast/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaError;->zzfd:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/cast/MediaError;->zzfe:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaError;->zzff:Ljava/lang/String;

    return-void
.end method

.method public static zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;
    .locals 6

    const-string v0, "requestId"

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "detailedErrorCode"

    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v3, "reason"

    .line 33
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    :cond_1
    new-instance p0, Lcom/google/android/gms/cast/MediaError;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaError;-><init>(JLjava/lang/Integer;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getDetailedErrorCode()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaError;->zzfe:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaError;->zzff:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaError;->zzfd:J

    return-wide v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaError;->zzfd:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "detailedErrorCode"

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaError;->zzfe:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaError;->zzff:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaError;->getRequestId()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 13
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaError;->getDetailedErrorCode()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaError;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 19
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
