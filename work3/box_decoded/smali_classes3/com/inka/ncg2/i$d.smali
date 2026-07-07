.class public Lcom/inka/ncg2/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:I

.field d:J

.field final synthetic e:Lcom/inka/ncg2/i;


# direct methods
.method public constructor <init>(Lcom/inka/ncg2/i;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/inka/ncg2/i$d;->e:Lcom/inka/ncg2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 97
    iput-object p1, p0, Lcom/inka/ncg2/i$d;->a:Ljava/lang/String;

    const/16 p1, 0x800

    new-array p1, p1, [B

    .line 98
    iput-object p1, p0, Lcom/inka/ncg2/i$d;->b:[B

    return-void
.end method
