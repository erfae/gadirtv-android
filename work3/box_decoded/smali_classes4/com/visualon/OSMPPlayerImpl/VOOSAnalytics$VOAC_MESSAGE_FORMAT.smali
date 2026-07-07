.class public final enum Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;
.super Ljava/lang/Enum;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOAC_MESSAGE_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

.field public static final enum VOAC_MSGFMT_BSON:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

.field public static final enum VOAC_MSGFMT_JSON:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 763
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    const-string v1, "VOAC_MSGFMT_JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;->VOAC_MSGFMT_JSON:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    .line 764
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    const-string v3, "VOAC_MSGFMT_BSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;->VOAC_MSGFMT_BSON:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 761
    sput-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 761
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;
    .locals 1

    .line 761
    const-class v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;
    .locals 1

    .line 761
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;

    return-object v0
.end method
