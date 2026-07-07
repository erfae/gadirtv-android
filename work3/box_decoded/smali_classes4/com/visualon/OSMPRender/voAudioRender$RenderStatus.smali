.class final enum Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
.super Ljava/lang/Enum;
.source "voAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RenderStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    new-instance v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v3, "PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    new-instance v3, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
    .locals 1

    .line 90
    const-class v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
    .locals 1

    .line 90
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v0}, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-object v0
.end method
