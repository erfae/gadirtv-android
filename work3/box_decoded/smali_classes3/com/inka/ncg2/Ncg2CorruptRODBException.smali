.class public Lcom/inka/ncg2/Ncg2CorruptRODBException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Device id has been changed"

    const v1, -0xffffb9b

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    return-void
.end method
