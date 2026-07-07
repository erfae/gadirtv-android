.class public final enum Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;
.super Ljava/lang/Enum;
.source "voAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UNSTABLE_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

.field public static final enum CONNECTION_STATE_CHANGE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

.field public static final enum NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

.field public static final enum SEEK:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 151
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    new-instance v1, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    const-string v3, "SEEK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->SEEK:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    new-instance v3, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    const-string v5, "CONNECTION_STATE_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->CONNECTION_STATE_CHANGE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 150
    sput-object v5, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;
    .locals 1

    .line 150
    const-class v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;
    .locals 1

    .line 150
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    invoke-virtual {v0}, [Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    return-object v0
.end method
