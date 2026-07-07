.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_LANGUAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

.field public static final enum VOOSMP_LANGUAGE_CHI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

.field public static final enum VOOSMP_LANGUAGE_ENG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

.field public static final enum VOOSMP_LANGUAGE_FRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

.field public static final enum VOOSMP_LANGUAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

.field public static final enum VOOSMP_LANGUAGE_SWE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 2098
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const-string v1, "VOOSMP_LANGUAGE_CHI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_CHI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    .line 2100
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const-string v3, "VOOSMP_LANGUAGE_ENG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_ENG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    .line 2102
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const-string v5, "VOOSMP_LANGUAGE_FRA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_FRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    .line 2104
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const-string v7, "VOOSMP_LANGUAGE_SWE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_SWE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    .line 2107
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const-string v9, "VOOSMP_LANGUAGE_MAX"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2096
    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2113
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2123
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2125
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 2126
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2129
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMPLANGUAGE_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    :cond_2
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->VOOSMP_LANGUAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;
    .locals 1

    .line 2096
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;
    .locals 1

    .line 2096
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2118
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_LANGUAGE_TYPE;->value:I

    return v0
.end method
