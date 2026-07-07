.class public Lcom/inka/ncg2/Ncg2ReadPhoneStateException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Fail to Read Phone State"

    const v1, -0xefffffa

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, -0xefffffa

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    return-void
.end method
