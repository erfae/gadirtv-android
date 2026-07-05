.class public final Lorg/bson/types/MinKey;
.super Ljava/lang/Object;
.source "MinKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3890827d1eefd444L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lorg/bson/types/MinKey;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MinKey"

    return-object v0
.end method
