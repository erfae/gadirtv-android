.class public final enum Lcom/verimatrix/vdc/Monitor$LoginAttribute;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$LoginAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum APP_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum APP_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum DEVICE_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum ENCODE_SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum ENCODE_USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum GDPR_CONSENT:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum GD_OPERATOR_CODE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum MIRIMON_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum PLAYER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum PLAYER_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

.field public static final enum USER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 407
    new-instance v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v1, "SUBSCRIBER_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 412
    new-instance v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v3, "ENCODE_SUBSCRIBER_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 416
    new-instance v3, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v5, "PLAYER_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 420
    new-instance v5, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v7, "PLAYER_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 424
    new-instance v7, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v9, "APP_VERSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 429
    new-instance v9, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v11, "GD_OPERATOR_CODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GD_OPERATOR_CODE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 435
    new-instance v11, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v13, "MIRIMON_URL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 441
    new-instance v13, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v15, "MIRIMON_SERVER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 447
    new-instance v15, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v14, "MDS_SERVER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 452
    new-instance v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v12, "USER_ID"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 457
    new-instance v12, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v10, "ENCODE_USER_ID"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 462
    new-instance v10, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v8, "GDPR_CONSENT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GDPR_CONSENT:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 466
    new-instance v8, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v6, "APP_ID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 470
    new-instance v6, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v4, "USER_TYPE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 475
    new-instance v4, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const-string v2, "DEVICE_ID"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->DEVICE_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 401
    sput-object v2, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->$VALUES:[Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$LoginAttribute;
    .locals 1

    .line 401
    const-class v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$LoginAttribute;
    .locals 1

    .line 401
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->$VALUES:[Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$LoginAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    return-object v0
.end method
