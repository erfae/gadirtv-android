.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_LANGUAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field public static final enum VO_OSMP_LANGUAGE_CHI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field public static final enum VO_OSMP_LANGUAGE_ENG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field public static final enum VO_OSMP_LANGUAGE_FRA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field public static final enum VO_OSMP_LANGUAGE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field public static final enum VO_OSMP_LANGUAGE_SWE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1307
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const-string v1, "VO_OSMP_LANGUAGE_CHI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_CHI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    .line 1309
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const-string v3, "VO_OSMP_LANGUAGE_ENG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_ENG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    .line 1311
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const-string v5, "VO_OSMP_LANGUAGE_FRA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_FRA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    .line 1313
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const-string v7, "VO_OSMP_LANGUAGE_SWE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_SWE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    .line 1316
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const-string v9, "VO_OSMP_LANGUAGE_MAX"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1305
    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    .line 1318
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1323
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1333
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1335
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 1336
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_LANGUAGE_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1340
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->VO_OSMP_LANGUAGE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;
    .locals 1

    .line 1305
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;
    .locals 1

    .line 1305
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1328
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LANGUAGE_TYPE;->value:I

    return v0
.end method
