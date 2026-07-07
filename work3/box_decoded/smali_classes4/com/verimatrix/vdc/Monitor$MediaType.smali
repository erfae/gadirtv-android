.class public final enum Lcom/verimatrix/vdc/Monitor$MediaType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum NETWORK_PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$MediaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 117
    new-instance v0, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v1, "LINEAR_CHANNEL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 118
    new-instance v1, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v4, "ON_DEMAND"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 119
    new-instance v4, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v6, "PVR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$MediaType;->PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 120
    new-instance v6, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v8, "NETWORK_PVR"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v7, v9}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$MediaType;->NETWORK_PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 121
    new-instance v8, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v10, "BROADCAST_CHANNEL"

    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-direct {v8, v10, v11, v12}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 125
    new-instance v10, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v13, "UNKNOWN"

    invoke-direct {v10, v13, v9, v2}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$MediaType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 127
    new-instance v13, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v14, "IDLE"

    invoke-direct {v13, v14, v12, v11}, Lcom/verimatrix/vdc/Monitor$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/verimatrix/vdc/Monitor$MediaType;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v11

    aput-object v10, v14, v9

    aput-object v13, v14, v12

    .line 115
    sput-object v14, Lcom/verimatrix/vdc/Monitor$MediaType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$MediaType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$MediaType;
    .locals 1

    .line 115
    const-class v0, Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$MediaType;
    .locals 1

    .line 115
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$MediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$MediaType;->value:I

    return v0
.end method
