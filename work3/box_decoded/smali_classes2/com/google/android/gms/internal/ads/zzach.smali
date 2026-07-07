.class public final Lcom/google/android/gms/internal/ads/zzach;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzdam:I = 0x1

.field public static final enum zzdan:I = 0x2

.field public static final enum zzdao:I = 0x3

.field public static final enum zzdap:I = 0x4

.field private static final enum zzdaq:I = 0x5

.field public static final enum zzdar:I = 0x6

.field private static final enum zzdas:I = 0x7

.field private static final synthetic zzdat:[I

.field public static final synthetic zzdau:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sput-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzdau:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PLATFORM_VERSION_TOO_LOW"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "CONTEXT_NOT_AN_ACTIVITY"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "CCT_NOT_SUPPORTED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CCT_READY_TO_OPEN"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ACTIVITY_NOT_FOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "EMPTY_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    aput-object v3, v1, v2

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzach;->zzdat:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method
