.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;
.super Ljava/io/InputStream;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public bitBuffer:I

.field public bitBufferLength:I

.field public hitPadding:Z

.field public readChars:I

.field public final synthetic this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field public final synthetic val$reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Reader;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 3
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 4
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 5
    iput-boolean p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 2
    iget-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v0, v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2a

    .line 3
    :cond_1a
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    const/16 v2, 0x20

    const-string v3, "Invalid input length "

    .line 4
    invoke-static {v2, v3, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    return v1

    .line 6
    :cond_2b
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    int-to-char v0, v0

    .line 7
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v1, v0, :cond_66

    .line 8
    iget-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v0, :cond_63

    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    if-eq v0, v2, :cond_53

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_63

    .line 10
    :cond_53
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    const/16 v2, 0x29

    const-string v3, "Padding cannot start at index "

    .line 11
    invoke-static {v2, v3, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_63
    :goto_63
    iput-boolean v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    goto :goto_0

    .line 14
    :cond_66
    iget-boolean v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v1, :cond_92

    .line 15
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v3, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 16
    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 17
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    shr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 19
    :cond_92
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    const/16 v3, 0x3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected padding character but found \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 30
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p2

    :goto_6
    if-ge v0, p3, :cond_1b

    .line 31
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    sub-int/2addr v0, p2

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    return v2

    :cond_15
    int-to-byte v1, v1

    .line 32
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    sub-int/2addr v0, p2

    return v0
.end method
