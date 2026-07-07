.class public final enum Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericAttributeKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

.field public static final enum KEY_0:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

.field public static final enum KEY_1:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

.field public static final enum KEY_2:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

.field public static final enum KEY_3:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

.field public static final enum KEY_4:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 692
    new-instance v0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v1, "KEY_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_0:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    .line 693
    new-instance v1, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v3, "KEY_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_1:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    .line 694
    new-instance v3, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v5, "KEY_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_2:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    .line 695
    new-instance v5, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v7, "KEY_3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_3:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    .line 696
    new-instance v7, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v9, "KEY_4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_4:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 691
    sput-object v9, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->$VALUES:[Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 700
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 701
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;
    .locals 1

    .line 691
    const-class v0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;
    .locals 1

    .line 691
    sget-object v0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->$VALUES:[Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->value:I

    return v0
.end method
