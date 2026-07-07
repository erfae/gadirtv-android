.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_DISPLAY_ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_SUB_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_TITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_TOP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 2235
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_NULL_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 2236
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v3, "VOOSMP_ITEM_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TOP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 2237
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v5, "VOOSMP_ITEM_TITLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 2238
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v7, "VOOSMP_ITEM_ATTRIBUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 2239
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v9, "VOOSMP_ITEM_SUB_ATTRIBUTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_SUB_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2234
    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2245
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 6

    .line 2255
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2257
    iget v5, v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2261
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOOSMP_DISPLAY_ITEM_TYPE does not match. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@voOSType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2264
    :cond_2
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 1

    .line 2234
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 1

    .line 2234
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2250
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    return v0
.end method
