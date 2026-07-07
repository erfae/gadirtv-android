.class public interface abstract Lcom/inka/ncg2/Ncg2Agent$NcgFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NcgFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract decreasePlayCount()I
.end method

.method public abstract getCurrentFilePointer()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract getHeaderSize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2InvalidNcgFileException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2InvalidNcgFileException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract read([BJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract seek(JLcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method
