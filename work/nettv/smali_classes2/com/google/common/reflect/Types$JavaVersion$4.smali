.class final enum Lcom/google/common/reflect/Types$JavaVersion$4;
.super Lcom/google/common/reflect/Types$JavaVersion;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types$JavaVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "JAVA9"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V

    return-void
.end method


# virtual methods
.method public final newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public final typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
