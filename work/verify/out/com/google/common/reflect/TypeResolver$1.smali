.class Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$mappings:Ljava/util/Map;

.field public final synthetic val$to:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitClass(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "No type mapping from "

    const-string v4, " to "

    .line 3
    invoke-static {v3, v2, p1, v4, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 3
    :goto_10
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    const-string v3, "%s is not an array type."

    invoke-static {v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    # invokes: Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    invoke-static {v1, p1, v0}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_7

    return-void

    .line 2
    :cond_7
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    # invokes: Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 5
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 7
    # invokes: Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    invoke-static {v1, v2, v3}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 8
    :cond_28
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    const-string v3, "Inconsistent raw type: %s vs. %s"

    .line 9
    invoke-static {v1, v3, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 12
    array-length v3, v1

    array-length v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4a

    const/4 v3, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    const-string v4, "%s not compatible with %s"

    invoke-static {v3, v4, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :goto_50
    array-length p1, v1

    if-ge v5, p1, :cond_5f

    .line 14
    iget-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v0, v1, v5

    aget-object v3, v2, v5

    # invokes: Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    invoke-static {p1, v0, v3}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_5f
    return-void
.end method

.method public final visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_7

    return-void

    .line 2
    :cond_7
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 6
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7
    array-length v4, v1

    array-length v5, v2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_24

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    const-string v7, "Incompatible type: %s vs. %s"

    invoke-static {v4, v7, p1, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    :goto_2d
    array-length v4, v1

    if-ge p1, v4, :cond_3c

    .line 9
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v5, v1, p1

    aget-object v7, v2, p1

    # invokes: Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    invoke-static {v4, v5, v7}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 10
    :cond_3c
    :goto_3c
    array-length p1, v3

    if-ge v6, p1, :cond_4b

    .line 11
    iget-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v1, v3, v6

    aget-object v2, v0, v6

    # invokes: Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    invoke-static {p1, v1, v2}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_4b
    return-void
.end method
