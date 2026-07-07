.class public final enum Lcom/verimatrix/vdc/Monitor$DeliveryType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$DeliveryType;

.field public static final enum DOWNLOAD:Lcom/verimatrix/vdc/Monitor$DeliveryType;

.field public static final enum FILE:Lcom/verimatrix/vdc/Monitor$DeliveryType;

.field public static final enum STREAM:Lcom/verimatrix/vdc/Monitor$DeliveryType;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$DeliveryType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 258
    new-instance v0, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$DeliveryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$DeliveryType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    .line 259
    new-instance v1, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-string v3, "STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/verimatrix/vdc/Monitor$DeliveryType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$DeliveryType;->STREAM:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    .line 260
    new-instance v3, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-string v5, "DOWNLOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/verimatrix/vdc/Monitor$DeliveryType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$DeliveryType;->DOWNLOAD:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    .line 261
    new-instance v5, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-string v7, "FILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/verimatrix/vdc/Monitor$DeliveryType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$DeliveryType;->FILE:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verimatrix/vdc/Monitor$DeliveryType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 257
    sput-object v7, Lcom/verimatrix/vdc/Monitor$DeliveryType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$DeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$DeliveryType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$DeliveryType;
    .locals 1

    .line 257
    const-class v0, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$DeliveryType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$DeliveryType;
    .locals 1

    .line 257
    sget-object v0, Lcom/verimatrix/vdc/Monitor$DeliveryType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$DeliveryType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$DeliveryType;->value:I

    return v0
.end method
