.class public final enum Lcom/verimatrix/vdc/Monitor$EndCause;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$EndCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum CALL:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum END_OF_ASSET:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum TERMINATED_BY_APP:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum TERMINATED_BY_START:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum TERMINATED_BY_USER:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$EndCause;

.field public static final enum UPDOWN:Lcom/verimatrix/vdc/Monitor$EndCause;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 319
    new-instance v0, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$EndCause;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 321
    new-instance v1, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v3, "UPDOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$EndCause;->UPDOWN:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 323
    new-instance v3, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v5, "CALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$EndCause;->CALL:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 325
    new-instance v5, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v7, "END_OF_ASSET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$EndCause;->END_OF_ASSET:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 327
    new-instance v7, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v9, "TERMINATED_BY_USER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_USER:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 329
    new-instance v9, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v11, "TERMINATED_BY_APP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_APP:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 331
    new-instance v11, Lcom/verimatrix/vdc/Monitor$EndCause;

    const-string v13, "TERMINATED_BY_START"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/verimatrix/vdc/Monitor$EndCause;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_START:Lcom/verimatrix/vdc/Monitor$EndCause;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verimatrix/vdc/Monitor$EndCause;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 318
    sput-object v13, Lcom/verimatrix/vdc/Monitor$EndCause;->$VALUES:[Lcom/verimatrix/vdc/Monitor$EndCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$EndCause;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$EndCause;
    .locals 1

    .line 318
    const-class v0, Lcom/verimatrix/vdc/Monitor$EndCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$EndCause;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$EndCause;
    .locals 1

    .line 318
    sget-object v0, Lcom/verimatrix/vdc/Monitor$EndCause;->$VALUES:[Lcom/verimatrix/vdc/Monitor$EndCause;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$EndCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$EndCause;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$EndCause;->value:I

    return v0
.end method
