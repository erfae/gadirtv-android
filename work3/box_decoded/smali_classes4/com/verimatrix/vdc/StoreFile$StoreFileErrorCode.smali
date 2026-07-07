.class public final enum Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
.super Ljava/lang/Enum;
.source "StoreFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/StoreFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreFileErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum BadArgument:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedClose:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedCreate:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedDelete:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedFieldNonExist:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedIntegrity:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedIntegrityGen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedOpen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedRead:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum FailedWrite:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

.field public static final enum Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 27
    new-instance v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 28
    new-instance v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v3, "FailedCreate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedCreate:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 29
    new-instance v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v5, "FailedDelete"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDelete:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 30
    new-instance v5, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v7, "FailedIntegrity"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedIntegrity:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 31
    new-instance v7, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v9, "FailedIntegrityGen"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedIntegrityGen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 32
    new-instance v9, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v11, "FailedWrite"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedWrite:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 33
    new-instance v11, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v13, "FailedOpen"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedOpen:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 34
    new-instance v13, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v15, "FailedClose"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedClose:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 35
    new-instance v15, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v14, "FailedRead"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedRead:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 36
    new-instance v14, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v12, "BadFile"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadFile:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 37
    new-instance v12, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v10, "FailedFieldNonExist"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedFieldNonExist:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 38
    new-instance v10, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v8, "FailedEncrypt"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedEncrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 39
    new-instance v8, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v6, "FailedDecrypt"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->FailedDecrypt:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 40
    new-instance v6, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const-string v4, "BadArgument"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->BadArgument:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const/16 v16, 0x0

    aput-object v0, v4, v16

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

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 25
    sput-object v4, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->$VALUES:[Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 1

    .line 25
    const-class v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    .locals 1

    .line 25
    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->$VALUES:[Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    return-object v0
.end method
