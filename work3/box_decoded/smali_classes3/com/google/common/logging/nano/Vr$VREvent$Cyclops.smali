.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
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
    name = "Cyclops"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;,
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;,
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;,
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

.field public share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

.field public shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    .locals 2

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    :cond_3
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

    .line 69
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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

    .line 70
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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

    .line 72
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 37
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 43
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 46
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 51
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 57
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-nez v0, :cond_6

    .line 58
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-nez v0, :cond_8

    .line 54
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    .line 55
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

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

    .line 24
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->capture:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->view:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->share:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Share;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->shareStart:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 32
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
