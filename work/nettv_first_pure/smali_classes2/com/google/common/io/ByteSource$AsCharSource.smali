.class Lcom/google/common/io/ByteSource$AsCharSource;
.super Lcom/google/common/io/CharSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsCharSource"
.end annotation


# instance fields
.field public final charset:Ljava/nio/charset/Charset;

.field public final synthetic this$0:Lcom/google/common/io/ByteSource;


# direct methods
.method public constructor <init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/io/CharSource;->asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;

    move-result-object p1

    return-object p1
.end method

.method public openStream()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public read()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    .line 2
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, ".asCharSource("

    const-string v4, ")"

    .line 4
    invoke-static {v3, v0, v2, v1, v4}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
