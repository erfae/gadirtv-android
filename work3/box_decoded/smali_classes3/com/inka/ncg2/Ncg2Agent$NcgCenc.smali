.class public interface abstract Lcom/inka/ncg2/Ncg2Agent$NcgCenc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NcgCenc"
.end annotation


# virtual methods
.method public abstract clearCencDecrypt()V
.end method

.method public abstract decryptCencSample([BI[I[I[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract prepareCencDecrypt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract setLicense(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2CencException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method
