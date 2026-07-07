.class public Lorg/bson/types/CodeWithScope;
.super Lorg/bson/types/Code;
.source "CodeWithScope.java"


# static fields
.field private static final serialVersionUID:J = -0x573835a7df0f9c82L


# instance fields
.field private final scope:Lorg/bson/Document;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bson/Document;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/types/Code;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lorg/bson/types/CodeWithScope;->scope:Lorg/bson/Document;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 2
    :cond_12
    invoke-super {p0, p1}, Lorg/bson/types/Code;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 3
    :cond_19
    check-cast p1, Lorg/bson/types/CodeWithScope;

    .line 4
    iget-object v2, p0, Lorg/bson/types/CodeWithScope;->scope:Lorg/bson/Document;

    iget-object p1, p1, Lorg/bson/types/CodeWithScope;->scope:Lorg/bson/Document;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Lorg/bson/Document;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2a

    :cond_28
    if-eqz p1, :cond_2b

    :goto_2a
    return v1

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getScope()Lorg/bson/Document;
    .registers 2

    iget-object v0, p0, Lorg/bson/types/CodeWithScope;->scope:Lorg/bson/Document;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/bson/types/Code;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bson/types/CodeWithScope;->scope:Lorg/bson/Document;

    invoke-virtual {v1}, Lorg/bson/Document;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
