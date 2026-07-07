.class public final Lorg/bson/codecs/pojo/PropertyModel;
.super Ljava/lang/Object;
.source "PropertyModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile cachedCodec:Lorg/bson/codecs/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final codec:Lorg/bson/codecs/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final error:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final propertyAccessor:Lorg/bson/codecs/pojo/PropertyAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PropertyAccessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PropertySerialization<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final readName:Ljava/lang/String;

.field private final typeData:Lorg/bson/codecs/pojo/TypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final useDiscriminator:Ljava/lang/Boolean;

.field private final writeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bson/codecs/pojo/TypeData;Lorg/bson/codecs/Codec;Lorg/bson/codecs/pojo/PropertySerialization;Ljava/lang/Boolean;Lorg/bson/codecs/pojo/PropertyAccessor;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;",
            "Lorg/bson/codecs/Codec<",
            "TT;>;",
            "Lorg/bson/codecs/pojo/PropertySerialization<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            "Lorg/bson/codecs/pojo/PropertyAccessor<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyModel;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/bson/codecs/pojo/PropertyModel;->readName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/bson/codecs/pojo/PropertyModel;->writeName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/bson/codecs/pojo/PropertyModel;->typeData:Lorg/bson/codecs/pojo/TypeData;

    .line 6
    iput-object p5, p0, Lorg/bson/codecs/pojo/PropertyModel;->codec:Lorg/bson/codecs/Codec;

    .line 7
    iput-object p5, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    .line 8
    iput-object p6, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    .line 9
    iput-object p7, p0, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertyAccessor:Lorg/bson/codecs/pojo/PropertyAccessor;

    .line 11
    iput-object p9, p0, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lorg/bson/codecs/pojo/PropertyModelBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/bson/codecs/pojo/PropertyModelBuilder;

    invoke-direct {v0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final cachedCodec(Lorg/bson/codecs/Codec;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/Codec<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_106

    .line 1
    const-class v2, Lorg/bson/codecs/pojo/PropertyModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_106

    .line 2
    :cond_11
    check-cast p1, Lorg/bson/codecs/pojo/PropertyModel;

    .line 3
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_2e

    :cond_28
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    :goto_2e
    return v1

    .line 4
    :cond_2f
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_4a

    :cond_44
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    :goto_4a
    return v1

    .line 5
    :cond_4b
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_66

    :cond_60
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    :goto_66
    return v1

    .line 6
    :cond_67
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bson/codecs/pojo/TypeData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    goto :goto_82

    :cond_7c
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    if-eqz v2, :cond_83

    :goto_82
    return v1

    .line 7
    :cond_83
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    goto :goto_9e

    :cond_98
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v2

    if-eqz v2, :cond_9f

    :goto_9e
    return v1

    .line 8
    :cond_9f
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    if-eqz v2, :cond_ac

    iget-object v3, p1, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    goto :goto_b0

    .line 10
    :cond_ac
    iget-object v2, p1, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    if-eqz v2, :cond_b1

    :goto_b0
    return v1

    .line 11
    :cond_b1
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    if-eqz v2, :cond_be

    iget-object v3, p1, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    goto :goto_c2

    :cond_be
    iget-object v2, p1, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    if-eqz v2, :cond_c3

    :goto_c2
    return v1

    .line 12
    :cond_c3
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v2

    if-eqz v2, :cond_d8

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    goto :goto_de

    .line 13
    :cond_d8
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v2

    if-eqz v2, :cond_df

    :goto_de
    return v1

    .line 14
    :cond_df
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    if-eqz v2, :cond_ec

    iget-object v3, p1, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    goto :goto_f0

    .line 16
    :cond_ec
    iget-object v2, p1, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    if-eqz v2, :cond_f1

    :goto_f0
    return v1

    .line 17
    :cond_f1
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    if-eqz v2, :cond_100

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    iget-object p1, p1, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_105

    goto :goto_104

    .line 19
    :cond_100
    iget-object p1, p1, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    if-eqz p1, :cond_105

    :goto_104
    return v1

    :cond_105
    return v0

    :cond_106
    :goto_106
    return v1
.end method

.method public final getCachedCodec()Lorg/bson/codecs/Codec;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    return-object v0
.end method

.method public getCodec()Lorg/bson/codecs/Codec;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->codec:Lorg/bson/codecs/Codec;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/PropertyAccessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertyAccessor:Lorg/bson/codecs/pojo/PropertyAccessor;

    return-object v0
.end method

.method public final getPropertySerialization()Lorg/bson/codecs/pojo/PropertySerialization;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/PropertySerialization<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    return-object v0
.end method

.method public getReadName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->readName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeData()Lorg/bson/codecs/pojo/TypeData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->typeData:Lorg/bson/codecs/pojo/TypeData;

    return-object v0
.end method

.method public getWriteName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->writeName:Ljava/lang/String;

    return-object v0
.end method

.method public final hasError()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getReadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getWriteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/TypeData;->hashCode()I

    move-result v2

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getCodec()Lorg/bson/codecs/Codec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    if-eqz v2, :cond_68

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_69

    :cond_68
    const/4 v2, 0x0

    :goto_69
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModel;->getPropertyAccessor()Lorg/bson/codecs/pojo/PropertyAccessor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    :goto_89
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->error:Ljava/lang/String;

    if-eqz v2, :cond_95

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    :goto_96
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    if-eqz v2, :cond_a3

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyModel;->cachedCodec:Lorg/bson/codecs/Codec;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_a3
    add-int/2addr v0, v1

    return v0
.end method

.method public isReadable()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->readName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isWritable()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->writeName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shouldSerialize(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->propertySerialization:Lorg/bson/codecs/pojo/PropertySerialization;

    invoke-interface {v0, p1}, Lorg/bson/codecs/pojo/PropertySerialization;->shouldSerialize(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "PropertyModel{propertyName=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', readName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyModel;->readName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', writeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyModel;->writeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', typeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyModel;->typeData:Lorg/bson/codecs/pojo/TypeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDiscriminator()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyModel;->useDiscriminator:Ljava/lang/Boolean;

    return-object v0
.end method
