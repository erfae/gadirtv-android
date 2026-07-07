.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2026
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN"

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2027
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v3, "VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED"

    const/4 v4, 0x1

    const v5, 0x10000001

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2028
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v5, "VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED"

    const/4 v6, 0x2

    const v7, 0x10000002

    invoke-direct {v3, v5, v6, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2029
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v7, "VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND"

    const/4 v8, 0x3

    const v9, 0x10000003

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2030
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v9, "VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED"

    const/4 v10, 0x4

    const v11, 0x10000004

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2031
    new-instance v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v11, "VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED"

    const/4 v12, 0x5

    const v13, 0x10000005

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2032
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v13, "VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO"

    const/4 v14, 0x6

    const/high16 v15, 0x20000000

    invoke-direct {v11, v13, v14, v15}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 2034
    new-instance v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v15, "VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX"

    const/4 v14, 0x7

    const v12, 0x7fffffff

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

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

    .line 2024
    sput-object v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2039
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2040
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 2

    const/4 v0, 0x0

    .line 2050
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2052
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 2053
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2056
    :cond_1
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 1

    .line 2024
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 1

    .line 2024
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2045
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->value:I

    return v0
.end method
