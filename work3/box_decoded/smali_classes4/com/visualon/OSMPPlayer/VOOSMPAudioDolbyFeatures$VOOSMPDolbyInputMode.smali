.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;
.super Ljava/lang/Enum;
.source "VOOSMPAudioDolbyFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMPDolbyInputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

.field public static final enum DUAL:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

.field public static final enum SINGLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->SINGLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    .line 63
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    const-string v3, "DUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->DUAL:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 61
    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;
    .locals 1

    .line 61
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;
    .locals 1

    .line 61
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->value:I

    return v0
.end method
