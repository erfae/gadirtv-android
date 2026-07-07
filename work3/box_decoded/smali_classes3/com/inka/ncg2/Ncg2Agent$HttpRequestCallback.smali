.class public interface abstract Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpRequestCallback"
.end annotation


# virtual methods
.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;
        }
    .end annotation
.end method

.method public abstract sendRequestResponseBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;
        }
    .end annotation
.end method
