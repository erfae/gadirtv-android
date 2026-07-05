.class Lcom/google/common/reflect/TypeToken$TypeCollector$1;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken$TypeCollector<",
        "Lcom/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method public final getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .line 2
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericInterfaces()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .line 2
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .line 2
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericSuperclass()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method
