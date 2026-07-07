.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;
.super Ljava/lang/Enum;
.source "VOOSMPAudioDolbyFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMPDolbyProgram"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

.field public static final enum PROGRAM_1:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

.field public static final enum PROGRAM_2:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

.field public static final enum PROGRAM_3:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

.field public static final enum PROGRAM_DISABLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    const-string v1, "PROGRAM_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_1:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    .line 37
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    const-string v4, "PROGRAM_2"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_2:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    .line 38
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    const-string v6, "PROGRAM_3"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_3:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    .line 41
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    const-string v8, "PROGRAM_DISABLE"

    invoke-direct {v6, v8, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_DISABLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 35
    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    .line 43
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->values()[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->values:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;
    .locals 3

    const/4 v0, 0x0

    .line 52
    :goto_0
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->values:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 53
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 54
    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->PROGRAM_DISABLE:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;
    .locals 1

    .line 35
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;
    .locals 1

    .line 35
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->value:I

    return v0
.end method
