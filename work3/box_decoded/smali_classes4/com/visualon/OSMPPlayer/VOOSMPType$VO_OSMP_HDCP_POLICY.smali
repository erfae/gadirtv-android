.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_HDCP_POLICY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

.field public static final enum VO_OSMP_HDCP_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

.field public static final enum VO_OSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

.field public static final enum VO_OSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

.field public static final enum VO_OSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1407
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    const-string v1, "VO_OSMP_HDCP_NO_CHECK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->VO_OSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    .line 1409
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    const-string v4, "VO_OSMP_HDCP_NON_COMPLIANT_DOWNRES"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->VO_OSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    .line 1411
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    const-string v6, "VO_OSMP_HDCP_NON_COMPLIANT_BLOCK"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->VO_OSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    .line 1413
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    const-string v8, "VO_OSMP_HDCP_MAX"

    const v9, 0x7fffffff

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->VO_OSMP_HDCP_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 1404
    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    .line 1415
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1420
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;
    .locals 3

    const/4 v0, 0x0

    .line 1430
    :goto_0
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1432
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1433
    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->VO_OSMP_HDCP_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;
    .locals 1

    .line 1404
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;
    .locals 1

    .line 1404
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1425
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->value:I

    return v0
.end method
