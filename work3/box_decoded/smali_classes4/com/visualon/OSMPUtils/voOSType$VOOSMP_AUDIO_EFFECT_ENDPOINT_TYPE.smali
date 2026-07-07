.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1870
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1872
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v4, "VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1874
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v6, "VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1876
    new-instance v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v8, "VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1878
    new-instance v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v10, "VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX"

    const v11, 0x7fffffff

    invoke-direct {v8, v10, v9, v11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 1867
    sput-object v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1883
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1884
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .line 1894
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1895
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 1897
    :cond_0
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .line 1867
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .line 1867
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1889
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return v0
.end method
