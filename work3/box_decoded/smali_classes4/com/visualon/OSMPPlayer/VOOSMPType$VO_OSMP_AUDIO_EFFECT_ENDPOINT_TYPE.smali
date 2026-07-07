.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1444
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1446
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v4, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1448
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v6, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1450
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v8, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1452
    new-instance v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v10, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX"

    const v11, 0x7fffffff

    invoke-direct {v8, v10, v9, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 1441
    sput-object v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1455
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1460
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 2

    .line 1470
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 1471
    aget-object p0, v0, p0

    return-object p0

    .line 1473
    :cond_0
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .line 1441
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .line 1441
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1465
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return v0
.end method
