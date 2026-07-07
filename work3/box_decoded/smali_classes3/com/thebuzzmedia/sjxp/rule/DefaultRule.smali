.class public Lcom/thebuzzmedia/sjxp/rule/DefaultRule;
.super Ljava/lang/Object;
.source "DefaultRule.java"

# interfaces
.implements Lcom/thebuzzmedia/sjxp/rule/IRule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/thebuzzmedia/sjxp/rule/IRule<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private locationPath:Ljava/lang/String;

.field private toStringCache:Ljava/lang/String;

.field private type:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;


# direct methods
.method public varargs constructor <init>(Lcom/thebuzzmedia/sjxp/rule/IRule$Type;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->toStringCache:Ljava/lang/String;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    .line 114
    sget-object v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ATTRIBUTE:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Type.ATTRIBUTE was specified but attributeNames was null or empty. One or more attribute names must be provided for this rule if it is going to match any attribute values."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    :goto_0
    sget-object v0, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->CHARACTER:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p3

    if-gtz v0, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Type.CHARACTER was specified, but attribute names were passed in. This is likely a mistake and can be fixed by simply not passing in the ignored attribute names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->type:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    .line 129
    iput-object p2, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->locationPath:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->attributeNames:[Ljava/lang/String;

    return-void

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "locationPath cannot end in a trailing slash (/), please remove it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "locationPath cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttributeNames()[Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->attributeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocationPath()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->locationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->type:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    return-object v0
.end method

.method public handleParsedAttribute(Lcom/thebuzzmedia/sjxp/XMLParser;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public handleParsedCharacters(Lcom/thebuzzmedia/sjxp/XMLParser;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public handleTag(Lcom/thebuzzmedia/sjxp/XMLParser;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;ZTT;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->toStringCache:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->attributeNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->attributeNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->type:Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", locationPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->locationPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attributeNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->toStringCache:Ljava/lang/String;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/rule/DefaultRule;->toStringCache:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
