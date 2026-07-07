.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;
.super Ljava/lang/Enum;
.source "VOOSMPAdEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_EVENT_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_BREAK_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_BREAK_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_CUE_POINTS:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_POD_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_POD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_NO_AD_VAST:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

.field public static final enum VO_OSMP_AD_EVENT_SDK_EVENT:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v1, "VO_OSMP_AD_EVENT_AD_BREAK_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_BREAK_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 38
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v3, "VO_OSMP_AD_EVENT_AD_BREAK_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_BREAK_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 41
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v5, "VO_OSMP_AD_EVENT_AD_POD_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_POD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 44
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v7, "VO_OSMP_AD_EVENT_AD_POD_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_POD_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 47
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v9, "VO_OSMP_AD_EVENT_AD_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 50
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v11, "VO_OSMP_AD_EVENT_AD_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 53
    new-instance v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v13, "VO_OSMP_AD_EVENT_AD_CUE_POINTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_CUE_POINTS:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 56
    new-instance v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v15, "VO_OSMP_AD_EVENT_SDK_EVENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_SDK_EVENT:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 59
    new-instance v15, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v14, "VO_OSMP_AD_EVENT_NO_AD_VAST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_NO_AD_VAST:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    .line 61
    new-instance v14, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const-string v12, "VO_OSMP_AD_EVENT_ID_MAX"

    const/16 v10, 0x9

    const/4 v8, -0x1

    invoke-direct {v14, v12, v10, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    .line 32
    sput-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 78
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 79
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_AD_EVENT_ID does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdEventListener"

    .line 81
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;
    .locals 1

    .line 32
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;
    .locals 1

    .line 32
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->mValue:I

    return v0
.end method
