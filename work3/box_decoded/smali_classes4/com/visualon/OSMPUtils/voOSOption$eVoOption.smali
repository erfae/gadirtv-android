.class public final enum Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
.super Ljava/lang/Enum;
.source "voOSOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eVoOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSOption$eVoOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoAudioAnimation:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoAudioDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoHLSBitrate:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoLoop:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoNotLoadLibrary:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoSocketType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoThirdLibOp:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoThreadCount:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoCloseCaption:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoColor:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoEffect:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 38
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 39
    new-instance v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v3, "eoVideoColor"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoColor:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 40
    new-instance v3, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v5, "eoVideoRender"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 41
    new-instance v5, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v7, "eoVideoDecode"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 42
    new-instance v7, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v9, "eoAudioDecode"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 43
    new-instance v9, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v11, "eoVideoEffect"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoEffect:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 44
    new-instance v11, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v13, "eoVideoCloseCaption"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoCloseCaption:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 45
    new-instance v13, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v15, "eoThreadCount"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThreadCount:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 46
    new-instance v15, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v14, "eoAudioAnimation"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioAnimation:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 47
    new-instance v14, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v12, "eoSocketType"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoSocketType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 48
    new-instance v12, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v10, "eoThirdLibOp"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThirdLibOp:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 49
    new-instance v10, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v8, "eoNotLoadLibrary"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNotLoadLibrary:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 50
    new-instance v8, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v6, "eoHLSBitrate"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoHLSBitrate:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 51
    new-instance v6, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v4, "eoLoop"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoLoop:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 37
    sput-object v4, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->$VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    .locals 1

    .line 37
    const-class v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    .locals 1

    .line 37
    sget-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->$VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-object v0
.end method
