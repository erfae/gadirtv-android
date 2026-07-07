.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;
.super Ljava/lang/Enum;
.source "VOOSMPAdType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_ENGINE_NOTIFY_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

.field public static final enum VO_OSMP_AD_ENGINE_NT_CONTENTURL:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

.field public static final enum VO_OSMP_AD_ENGINE_NT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 189
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    const-string v1, "VO_OSMP_AD_ENGINE_NT_CONTENTURL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->VO_OSMP_AD_ENGINE_NT_CONTENTURL:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    .line 191
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    const-string v3, "VO_OSMP_AD_ENGINE_NT_ID_MAX"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->VO_OSMP_AD_ENGINE_NT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 186
    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 206
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 207
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_AD_ENGINE_NOTIFY_ID does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdType"

    .line 209
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->VO_OSMP_AD_ENGINE_NT_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;
    .locals 1

    .line 186
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;
    .locals 1

    .line 186
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_ENGINE_NOTIFY_ID;->mValue:I

    return v0
.end method
