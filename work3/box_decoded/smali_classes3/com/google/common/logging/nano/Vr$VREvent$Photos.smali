.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photos"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;,
        Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

.field public numPhotos:Ljava/lang/Integer;

.field public openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

.field public warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    .locals 2

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 49
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-nez v0, :cond_4

    .line 58
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-nez v0, :cond_6

    .line 54
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 51
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->mediaStats:Lcom/google/common/logging/nano/Vr$VREvent$Photos$MediaStats;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 30
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
