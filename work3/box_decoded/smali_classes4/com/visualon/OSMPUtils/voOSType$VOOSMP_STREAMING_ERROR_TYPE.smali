.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_STREAMING_ERROR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_DECRYPT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_HANDLE_NULL_POINTER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_INIT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_KEY_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_NOT_SUPPORTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_NO_SDK_LICENSE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_UNINIT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_DRM_VIDEO_OUTPUT_FORBIDDEN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_ERROR_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_ERROR_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_ERROR_UNKNOWN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_CONNECTION_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_DNS_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_GET_RESPONSE_TIMEOUT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_HTTP_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_OUT_OF_MEMORY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_READ_DATA_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_REDIRECT_BAD_URL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_REDIRECT_URL_MISSING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field public static final enum VOOSMP_STREAMING_IO_RESPONSE_TOOLARGE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1733
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v1, "VOOSMP_STREAMING_ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_ERROR_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1735
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v3, "VOOSMP_STREAMING_IO_CONNECTION_FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_CONNECTION_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1737
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v5, "VOOSMP_STREAMING_IO_RESPONSE_TOOLARGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_RESPONSE_TOOLARGE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1739
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v7, "VOOSMP_STREAMING_IO_GET_RESPONSE_TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_GET_RESPONSE_TIMEOUT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1741
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v9, "VOOSMP_STREAMING_IO_READ_DATA_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_READ_DATA_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1743
    new-instance v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v11, "VOOSMP_STREAMING_IO_OUT_OF_MEMORY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_OUT_OF_MEMORY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1745
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v13, "VOOSMP_STREAMING_IO_REDIRECT_BAD_URL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_REDIRECT_BAD_URL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1747
    new-instance v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v15, "VOOSMP_STREAMING_IO_REDIRECT_URL_MISSING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_REDIRECT_URL_MISSING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1749
    new-instance v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v14, "VOOSMP_STREAMING_IO_DNS_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_DNS_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1753
    new-instance v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v12, "VOOSMP_STREAMING_IO_HTTP_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_IO_HTTP_ERROR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1756
    new-instance v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_NOT_SUPPORTED"

    const/16 v8, 0xa

    const/16 v6, 0x30

    invoke-direct {v12, v10, v8, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_NOT_SUPPORTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1758
    new-instance v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_NO_SDK_LICENSE"

    const/16 v8, 0xb

    const/16 v4, 0x31

    invoke-direct {v6, v10, v8, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_NO_SDK_LICENSE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1760
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_HANDLE_NULL_POINTER"

    const/16 v8, 0xc

    const/16 v2, 0x32

    invoke-direct {v4, v10, v8, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_HANDLE_NULL_POINTER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1762
    new-instance v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_VIDEO_OUTPUT_FORBIDDEN"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x33

    invoke-direct {v2, v10, v8, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_VIDEO_OUTPUT_FORBIDDEN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1764
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_INIT_FAIL"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x34

    invoke-direct {v4, v10, v8, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_INIT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1766
    new-instance v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_KEY_FAIL"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x35

    invoke-direct {v2, v10, v8, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_KEY_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1768
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_DECRYPT_FAIL"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x36

    invoke-direct {v4, v10, v8, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_DECRYPT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1770
    new-instance v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_DRM_UNINIT_FAIL"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x37

    invoke-direct {v2, v10, v8, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_DRM_UNINIT_FAIL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1772
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_ERROR_UNKNOWN"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x60

    invoke-direct {v4, v10, v8, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_ERROR_UNKNOWN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 1774
    new-instance v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const-string v10, "VOOSMP_STREAMING_ERROR_TYPE_MAX"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const/4 v4, -0x1

    invoke-direct {v2, v10, v8, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_ERROR_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v2, v4, v8

    .line 1730
    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1778
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1779
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1788
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1790
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 1791
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1794
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@voOSType"

    const-string v0, "VO_OSMP_PREFERENCE does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1795
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->VOOSMP_STREAMING_ERROR_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 1730
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 1730
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1783
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->value:I

    return v0
.end method
