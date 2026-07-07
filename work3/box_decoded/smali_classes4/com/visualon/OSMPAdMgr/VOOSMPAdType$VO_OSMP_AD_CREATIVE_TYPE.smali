.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPAdType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_CREATIVE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

.field public static final enum VO_OSMP_AD_CREATIVE_COMPANION:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

.field public static final enum VO_OSMP_AD_CREATIVE_LINEAR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

.field public static final enum VO_OSMP_AD_CREATIVE_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

.field public static final enum VO_OSMP_AD_CREATIVE_NONLINEAR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 277
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    const-string v1, "VO_OSMP_AD_CREATIVE_LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_LINEAR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    .line 278
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    const-string v3, "VO_OSMP_AD_CREATIVE_NONLINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_NONLINEAR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    .line 279
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    const-string v5, "VO_OSMP_AD_CREATIVE_COMPANION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_COMPANION:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    .line 281
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    const-string v7, "VO_OSMP_AD_CREATIVE_NONE"

    const/4 v8, 0x3

    const v9, 0x7fffffff

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 275
    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;
    .locals 6

    .line 289
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    move-result-object v0

    .line 290
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 291
    aget-object v1, v0, p0

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 292
    aget-object p0, v0, p0

    return-object p0

    .line 293
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 294
    invoke-virtual {v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VO_OSMP_AD_CREATIVE_TYPE does not match. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdType"

    .line 297
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;
    .locals 1

    .line 275
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;
    .locals 1

    .line 275
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->mValue:I

    return v0
.end method
