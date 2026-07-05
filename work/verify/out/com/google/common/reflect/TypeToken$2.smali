.class Lcom/google/common/reflect/TypeToken$2;
.super Lcom/google/common/reflect/Invokable$ConstructorInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$ConstructorInvokable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method public final getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    # invokes: Lcom/google/common/reflect/TypeToken;->getCovariantTypeResolver()Lcom/google/common/reflect/TypeResolver;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    return-object v1
.end method

.method public final getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    # invokes: Lcom/google/common/reflect/TypeToken;->getInvariantTypeResolver()Lcom/google/common/reflect/TypeResolver;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->access$100(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    return-object v1
.end method

.method public final getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    # invokes: Lcom/google/common/reflect/TypeToken;->getCovariantTypeResolver()Lcom/google/common/reflect/TypeResolver;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$2;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    # invokes: Lcom/google/common/reflect/TypeToken;->getInvariantTypeResolver()Lcom/google/common/reflect/TypeResolver;
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->access$100(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v2

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeResolver;->resolveTypesInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "("

    const-string v4, ")"

    .line 5
    invoke-static {v2, v0, v3, v1, v4}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
