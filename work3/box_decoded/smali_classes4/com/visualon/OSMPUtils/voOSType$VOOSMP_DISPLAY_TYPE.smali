.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_DISPLAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

.field public static final enum VOOSMP_DISPLAY_NULL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

.field public static final enum VOOSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

.field public static final enum VOOSMP_DISPLAY_RENDER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

.field public static final enum VOOSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2199
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    const-string v1, "VOOSMP_DISPLAY_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_NULL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    .line 2201
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    const-string v3, "VOOSMP_DISPLAY_PLAYER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    .line 2203
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    const-string v5, "VOOSMP_DISPLAY_SOURCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    .line 2205
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    const-string v7, "VOOSMP_DISPLAY_RENDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_RENDER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2197
    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2211
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2221
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2223
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 2224
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2227
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOOSMP_DISPLAY_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2230
    :cond_2
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_NULL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;
    .locals 1

    .line 2197
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;
    .locals 1

    .line 2197
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2216
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->value:I

    return v0
.end method
