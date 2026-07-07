.class public final enum Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
.super Ljava/lang/Enum;
.source "voOSTypePrivate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSTypePrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_HDCP_POLICY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 213
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v1, "VOOSMP_HDCP_NO_CHECK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 215
    new-instance v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v4, "VOOSMP_HDCP_NON_COMPLIANT_DOWNRES"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 217
    new-instance v4, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v6, "VOOSMP_HDCP_NON_COMPLIANT_BLOCK"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 219
    new-instance v6, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v8, "VOOSMP_HDCP_MAX"

    const v9, 0x7fffffff

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 210
    sput-object v8, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 2

    const/4 v0, 0x0

    .line 235
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 237
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 238
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    sget-object p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 1

    .line 210
    const-class v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 1

    .line 210
    sget-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->value:I

    return v0
.end method
