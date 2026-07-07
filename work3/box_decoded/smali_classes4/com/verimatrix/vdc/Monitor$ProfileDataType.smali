.class public final enum Lcom/verimatrix/vdc/Monitor$ProfileDataType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$ProfileDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum BLOB:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum DATE:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum LIST:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum NUMBER:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field public static final enum URL:Lcom/verimatrix/vdc/Monitor$ProfileDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 357
    new-instance v0, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->NUMBER:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 358
    new-instance v1, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 359
    new-instance v3, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v5, "LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->LIST:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 360
    new-instance v5, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v7, "DATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->DATE:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 361
    new-instance v7, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v9, "URL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->URL:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    .line 362
    new-instance v9, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const-string v11, "BLOB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->BLOB:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 356
    sput-object v11, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$ProfileDataType;
    .locals 1

    .line 356
    const-class v0, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$ProfileDataType;
    .locals 1

    .line 356
    sget-object v0, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$ProfileDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-object v0
.end method
