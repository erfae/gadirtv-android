.class public final enum Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;
.super Ljava/lang/Enum;
.source "RSAKeyGenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RSAKeyGenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeySize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

.field public static final enum INVALID:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

.field public static final enum OneK:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

.field public static final enum TwoK:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;


# instance fields
.field private mKeySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->INVALID:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    new-instance v1, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    const-string v3, "OneK"

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-direct {v1, v3, v4, v5}, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->OneK:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    new-instance v3, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    const-string v5, "TwoK"

    const/4 v6, 0x2

    const/16 v7, 0x800

    invoke-direct {v3, v5, v6, v7}, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->TwoK:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 23
    sput-object v5, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->$VALUES:[Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->mKeySize:I

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;)I
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->getValue()I

    move-result p0

    return p0
.end method

.method private getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->mKeySize:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;
    .locals 1

    .line 23
    const-class v0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;
    .locals 1

    .line 23
    sget-object v0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->$VALUES:[Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    return-object v0
.end method
