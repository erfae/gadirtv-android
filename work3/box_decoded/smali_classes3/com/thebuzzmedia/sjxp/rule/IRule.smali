.class public interface abstract Lcom/thebuzzmedia/sjxp/rule/IRule;
.super Ljava/lang/Object;
.source "IRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getLocationPath()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/thebuzzmedia/sjxp/rule/IRule$Type;
.end method

.method public abstract handleParsedAttribute(Lcom/thebuzzmedia/sjxp/XMLParser;ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract handleParsedCharacters(Lcom/thebuzzmedia/sjxp/XMLParser;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract handleTag(Lcom/thebuzzmedia/sjxp/XMLParser;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>;ZTT;)V"
        }
    .end annotation
.end method
