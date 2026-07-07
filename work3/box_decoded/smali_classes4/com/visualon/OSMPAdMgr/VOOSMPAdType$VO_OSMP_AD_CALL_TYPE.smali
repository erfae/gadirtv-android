.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPAdType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_CALL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_ADSXML:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_IMA:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_IMADAI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_MEDIATAILOR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_TYPE_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_VAST:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

.field public static final enum VO_OSMP_AD_CALL_VMAP:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 135
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v1, "VO_OSMP_AD_CALL_VAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_VAST:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 138
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v3, "VO_OSMP_AD_CALL_VMAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_VMAP:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 141
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v5, "VO_OSMP_AD_CALL_ADSXML"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_ADSXML:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 144
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v7, "VO_OSMP_AD_CALL_IMA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_IMA:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 147
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v9, "VO_OSMP_AD_CALL_IMADAI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_IMADAI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 152
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v11, "VO_OSMP_AD_CALL_NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 155
    new-instance v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v13, "VO_OSMP_AD_CALL_MEDIATAILOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_MEDIATAILOR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    .line 157
    new-instance v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const-string v15, "VO_OSMP_AD_CALL_TYPE_MAX"

    const/4 v14, 0x7

    const v12, 0x7fffffff

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_TYPE_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 132
    sput-object v12, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 172
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 173
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_AD_CALL_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdType"

    .line 175
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->VO_OSMP_AD_CALL_TYPE_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;
    .locals 1

    .line 132
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;
    .locals 1

    .line 132
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CALL_TYPE;->mValue:I

    return v0
.end method
