.class public final enum Lcom/verimatrix/vdc/Monitor$IdentifiedType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentifiedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$IdentifiedType;

.field public static final enum REFERENCE:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

.field public static final enum URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 193
    new-instance v0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$IdentifiedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 194
    new-instance v1, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const-string v3, "REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/verimatrix/vdc/Monitor$IdentifiedType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->REFERENCE:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 195
    new-instance v3, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const-string v5, "URL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/verimatrix/vdc/Monitor$IdentifiedType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 192
    sput-object v5, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$IdentifiedType;
    .locals 1

    .line 192
    const-class v0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$IdentifiedType;
    .locals 1

    .line 192
    sget-object v0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$IdentifiedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->value:I

    return v0
.end method
