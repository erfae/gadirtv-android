.class public final enum Lcom/verimatrix/vdc/RSAErrorCode;
.super Ljava/lang/Enum;
.source "RSAErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/RSAErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum DecryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum EncryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum InvalidKeySize:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum KeyGenFailed:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum OK:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum PubKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

.field public static final enum privKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 9
    new-instance v1, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v3, "KeyGenFailed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/RSAErrorCode;->KeyGenFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 10
    new-instance v3, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v5, "PubKeyGenFailedFrombase64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/RSAErrorCode;->PubKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 11
    new-instance v5, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v7, "privKeyGenFailedFrombase64"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/RSAErrorCode;->privKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 12
    new-instance v7, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v9, "InvalidKeySize"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verimatrix/vdc/RSAErrorCode;->InvalidKeySize:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 13
    new-instance v9, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v11, "RSAInputError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verimatrix/vdc/RSAErrorCode;->RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 14
    new-instance v11, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v13, "EncryptionFailed"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verimatrix/vdc/RSAErrorCode;->EncryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    .line 15
    new-instance v13, Lcom/verimatrix/vdc/RSAErrorCode;

    const-string v15, "DecryptionFailed"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verimatrix/vdc/RSAErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verimatrix/vdc/RSAErrorCode;->DecryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/verimatrix/vdc/RSAErrorCode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 5
    sput-object v15, Lcom/verimatrix/vdc/RSAErrorCode;->$VALUES:[Lcom/verimatrix/vdc/RSAErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 1

    .line 5
    const-class v0, Lcom/verimatrix/vdc/RSAErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 1

    .line 5
    sget-object v0, Lcom/verimatrix/vdc/RSAErrorCode;->$VALUES:[Lcom/verimatrix/vdc/RSAErrorCode;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/RSAErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/RSAErrorCode;

    return-object v0
.end method
