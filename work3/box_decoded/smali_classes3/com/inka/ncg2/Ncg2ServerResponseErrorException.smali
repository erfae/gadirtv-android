.class public Lcom/inka/ncg2/Ncg2ServerResponseErrorException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field public static final ERROR_CANNOT_FIND_CID:I = 0x138c

.field public static final ERROR_CANNOT_FIND_SID:I = 0x138d

.field public static final ERROR_CANNOT_ISSUE_LICENSE:I = 0x138b

.field public static final ERROR_CERT_ALREADY_EXIST:I = 0xbb8

.field public static final ERROR_CERT_NOT_EXIST:I = 0xbb9

.field public static final ERROR_DATASET_INVALID:I = 0x1b5b

.field public static final ERROR_DB_ERROR_8000:I = 0x1f40

.field public static final ERROR_DB_ERROR_8001:I = 0x1f41

.field public static final ERROR_DB_ERROR_8002:I = 0x1f42

.field public static final ERROR_DB_INTERNAL_ERROR:I = 0x7d0

.field public static final ERROR_DEVICE_OVER:I = 0xfa2

.field public static final ERROR_DEVIC_NOT_REGIST:I = 0xfa0

.field public static final ERROR_DH_INIT_FAILED:I = 0x1b5c

.field public static final ERROR_GATEWAY_ERROR_1001:I = 0x3e9

.field public static final ERROR_GATEWAY_ERROR_1002:I = 0x3ea

.field public static final ERROR_GATEWAY_ERROR_1003:I = 0x3eb

.field public static final ERROR_GATEWAY_ERROR_1004:I = 0x3ec

.field public static final ERROR_GATEWAY_INTERNAL_ERROR:I = 0x138f

.field public static final ERROR_GATEWAY_RESPONSE_ERROR:I = 0x138e

.field public static final ERROR_HMAC_IS_INVALID:I = 0x1771

.field public static final ERROR_INVALID_DATA_ERROR_9001:I = 0x2329

.field public static final ERROR_INVALID_DATA_ERROR_9003:I = 0x232b

.field public static final ERROR_INVALID_DATA_ERROR_9999:I = 0x270f

.field public static final ERROR_INVALID_LIC_DATA_ERROR_2002:I = 0x7d2

.field public static final ERROR_INVALID_LIC_DATA_ERROR_2003:I = 0x7d3

.field public static final ERROR_INVALID_LIC_DATA_ERROR_2004:I = 0x7d4

.field public static final ERROR_INVALID_LIC_DATA_ERROR_2005:I = 0x7d5

.field public static final ERROR_INVALID_LIC_DATA_ERROR_2006:I = 0x7d6

.field public static final ERROR_INVALID_LIC_DATA_ERROR_3001:I = 0xbb9

.field public static final ERROR_INVALID_LIC_DATA_ERROR_5002:I = 0x138a

.field public static final ERROR_INVALID_LIC_DATA_ERROR_5003:I = 0x138b

.field public static final ERROR_INVALID_LIC_DATA_ERROR_5005:I = 0x138d

.field public static final ERROR_INVALID_LIC_DATA_ERROR_5006:I = 0x138e

.field public static final ERROR_INVALID_PACK_DATA_ERROR_2001:I = 0x7d1

.field public static final ERROR_INVALID_PACK_DATA_ERROR_3000:I = 0xbb8

.field public static final ERROR_INVALID_PACK_DATA_ERROR_3004:I = 0xbbc

.field public static final ERROR_INVALID_PACK_DATA_ERROR_7000:I = 0x1b58

.field public static final ERROR_LICENSE_GATE_WAY_RESPONSE_ERROR:I = 0x2382

.field public static final ERROR_MAX:I = 0x270f

.field public static final ERROR_MIN:I = 0x3e8

.field public static final ERROR_NOT_SUPPORT_MODE:I = 0x270f

.field public static final ERROR_SVR_MODULE_ERROR_5001:I = 0x1389

.field public static final ERROR_SVR_MODULE_ERROR_7002:I = 0x1b5a

.field public static final ERROR_SVR_MODULE_ERROR_7003:I = 0x1b5b

.field public static final ERROR_SVR_MODULE_ERROR_7005:I = 0x1b5d

.field public static final ERROR_SVR_MODULE_ERROR_7006:I = 0x1b5e

.field public static final ERROR_SVR_MODULE_ERROR_7007:I = 0x1b5f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mRequestPlainData:Ljava/lang/String;

.field private mRequestRowData:Ljava/lang/String;

.field private mResponseRowData:Ljava/lang/String;

.field private mServerErrorCode:I

.field private mServerErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/inka/ncg2/Ncg2Exception;-><init>()V

    const-string v0, ""

    .line 233
    iput-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 233
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    .line 241
    iput p2, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorCode:I

    .line 242
    iput-object p3, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 233
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    .line 258
    iput p2, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorCode:I

    .line 259
    iput-object p3, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    .line 262
    iput-object p5, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    .line 263
    iput-object p6, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 233
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRequestPlainData()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestPlainData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRowData()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mRequestRowData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseRowData()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mResponseRowData:Ljava/lang/String;

    return-object v0
.end method

.method public getServerErrorCode()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorCode:I

    return v0
.end method

.method public getServerErrorMsg()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->mServerErrorMsg:Ljava/lang/String;

    return-object v0
.end method
