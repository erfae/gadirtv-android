.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;
.super Ljava/lang/Enum;
.source "VOOSMPAudioDolbyFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMPDolbyEndPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

.field public static final enum STEREO_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

.field public static final enum STEREO_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    const-string v1, "STEREO_SPEAKER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->STEREO_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    .line 20
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    const-string v4, "STEREO_HEADPHONE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->STEREO_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    new-array v4, v5, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 17
    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    .line 22
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->values()[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->values:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;
    .locals 1

    .line 17
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;
    .locals 1

    .line 17
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->value:I

    return v0
.end method
