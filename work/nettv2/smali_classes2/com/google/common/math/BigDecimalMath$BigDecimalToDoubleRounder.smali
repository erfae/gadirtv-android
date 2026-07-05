.class Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;
.super Lcom/google/common/math/ToDoubleRounder;
.source "BigDecimalMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/BigDecimalMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigDecimalToDoubleRounder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/math/ToDoubleRounder<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;

    invoke-direct {v0}, Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;-><init>()V

    sput-object v0, Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;->INSTANCE:Lcom/google/common/math/BigDecimalMath$BigDecimalToDoubleRounder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/ToDoubleRounder;-><init>()V

    return-void
.end method


# virtual methods
.method public final minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    .line 2
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public final roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .locals 2

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final sign(Ljava/lang/Number;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    return p1
.end method

.method public final toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .locals 0

    new-instance p3, Ljava/math/BigDecimal;

    invoke-direct {p3, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p3
.end method
