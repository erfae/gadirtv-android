.class public final enum Lcom/androidnetworking/common/ResponseType;
.super Ljava/lang/Enum;
.source "ResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidnetworking/common/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidnetworking/common/ResponseType;

.field public static final enum BITMAP:Lcom/androidnetworking/common/ResponseType;

.field public static final enum JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

.field public static final enum JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

.field public static final enum OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

.field public static final enum PARSED:Lcom/androidnetworking/common/ResponseType;

.field public static final enum PREFETCH:Lcom/androidnetworking/common/ResponseType;

.field public static final enum STRING:Lcom/androidnetworking/common/ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 24
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    .line 25
    new-instance v1, Lcom/androidnetworking/common/ResponseType;

    const-string v3, "JSON_OBJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    .line 26
    new-instance v3, Lcom/androidnetworking/common/ResponseType;

    const-string v5, "JSON_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    .line 27
    new-instance v5, Lcom/androidnetworking/common/ResponseType;

    const-string v7, "OK_HTTP_RESPONSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    .line 28
    new-instance v7, Lcom/androidnetworking/common/ResponseType;

    const-string v9, "BITMAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    .line 29
    new-instance v9, Lcom/androidnetworking/common/ResponseType;

    const-string v11, "PREFETCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/androidnetworking/common/ResponseType;->PREFETCH:Lcom/androidnetworking/common/ResponseType;

    .line 30
    new-instance v11, Lcom/androidnetworking/common/ResponseType;

    const-string v13, "PARSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/androidnetworking/common/ResponseType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 23
    sput-object v13, Lcom/androidnetworking/common/ResponseType;->$VALUES:[Lcom/androidnetworking/common/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidnetworking/common/ResponseType;
    .locals 1

    .line 23
    const-class v0, Lcom/androidnetworking/common/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidnetworking/common/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/androidnetworking/common/ResponseType;
    .locals 1

    .line 23
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->$VALUES:[Lcom/androidnetworking/common/ResponseType;

    invoke-virtual {v0}, [Lcom/androidnetworking/common/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidnetworking/common/ResponseType;

    return-object v0
.end method
